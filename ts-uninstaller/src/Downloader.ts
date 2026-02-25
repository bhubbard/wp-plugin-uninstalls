import axios from 'axios';
import axiosRetry from 'axios-retry';
import unzipper from 'unzipper';
import os from 'os';
import path from 'path';
import fs from 'fs-extra';

// Setup exponential backoff for WP.org download rate limits
axiosRetry(axios, {
    retries: 5,
    retryDelay: axiosRetry.exponentialDelay,
    retryCondition: (error) => {
        return axiosRetry.isNetworkOrIdempotentRequestError(error) || error.response?.status === 429;
    }
});

export class PluginDownloader {

    /**
     * Downloads and extracts the plugin ZIP into a temporary directory.
     * @param slug Plugin slug
     * @returns Path to the extracted plugin folder
     */
    public async downloadAndExtract(slug: string): Promise<string> {
        const url = `https://downloads.wordpress.org/plugin/${slug}.zip`;
        const tempDir = path.join(os.tmpdir(), `wp-uninstaller-${slug}-${Date.now()}`);

        await fs.ensureDir(tempDir);

        try {
            const response = await axios({
                method: 'get',
                url: url,
                responseType: 'stream',
                headers: { 'User-Agent': 'WP-Uninstaller/2.0' },
                timeout: 30000 // 30s timeout
            });

            await new Promise<void>((resolve, reject) => {
                const extractStream = unzipper.Extract({ path: tempDir });

                response.data.pipe(extractStream);

                extractStream.on('close', resolve);
                extractStream.on('error', reject);
                response.data.on('error', reject);
            });

            // The WP.org zip usually contains a single folder matching the plug-in slug
            const extractedFolders = await fs.readdir(tempDir);
            if (extractedFolders.length > 0) {
                // Find the first directory inside tempDir
                for (const item of extractedFolders) {
                    const fullPath = path.join(tempDir, item);
                    const stat = await fs.stat(fullPath);
                    if (stat.isDirectory()) {
                        return fullPath;
                    }
                }
            }

            return tempDir;

        } catch (error: any) {
            await this.cleanup(tempDir);
            throw new Error(`Failed to download or extract ${slug}: ${error.message}`);
        }
    }

    /**
     * Delete the temporary extracted folder.
     * @param extractPath The temporary extraction path
     */
    public async cleanup(extractPath: string): Promise<void> {
        try {
            // Since extractPath might be a subfolder inside our initial tempDir,
            // we should remove the parent tempDir if possible, or just remove the extractPath if we returned tempDir.
            // Let's heuristically find the `wp-uninstaller-` root and delete that.
            let dirToDelete = extractPath;
            const parentDir = path.dirname(extractPath);
            if (path.basename(parentDir).startsWith('wp-uninstaller-')) {
                dirToDelete = parentDir;
            } else if (!path.basename(extractPath).startsWith('wp-uninstaller-')) {
                dirToDelete = extractPath;
            }

            if (await fs.pathExists(dirToDelete)) {
                await fs.remove(dirToDelete);
            }
        } catch (e) {
            // console.error(`Failed to cleanup ${extractPath}`, e);
        }
    }
}
