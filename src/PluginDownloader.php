<?php

namespace WPUninstaller;

class PluginDownloader {
    private $tempDir;

    public function __construct() {
        $this->tempDir = sys_get_temp_dir() . '/wp-uninstaller_' . uniqid();
        if (!is_dir($this->tempDir)) {
            mkdir($this->tempDir, 0777, true);
        }
    }

    /**
     * Downloads and extracts a plugin from the WP.org repository.
     * 
     * @param string $slug The plugin slug (e.g., 'akismet')
     * @return string|false The path to the extracted plugin directory, or false on failure.
     */
    public function downloadAndExtract(string $slug) {
        // 1. Fetch plugin info from WP.org API
        $apiUrl = sprintf('https://api.wordpress.org/plugins/info/1.2/?action=plugin_information&request[slug]=%s', urlencode($slug));
        
        $ch = curl_init($apiUrl);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_USERAGENT, 'WP Uninstaller Tool (local)');
        $response = curl_exec($ch);
        $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);

        if ($httpCode !== 200 || !$response) {
            error_log("Failed to fetch info for slug: $slug");
            return false;
        }

        $data = json_decode($response, true);
        if (!$data || isset($data['error'])) {
            error_log("Invalid JSON or plugin not found: $slug");
            return false;
        }

        $downloadUrl = $data['download_link'] ?? null;
        if (!$downloadUrl) {
            error_log("No download link found for: $slug");
            return false;
        }

        // 2. Download the ZIP file
        $zipPath = $this->tempDir . '/' . $slug . '.zip';
        $pluginDestPath = $this->tempDir . '/' . $slug;

        $zipData = file_get_contents($downloadUrl);
        if ($zipData === false) {
             error_log("Failed to download zip from: $downloadUrl");
             return false;
        }
        file_put_contents($zipPath, $zipData);

        // 3. Extract the ZIP
        $zip = new \ZipArchive();
        if ($zip->open($zipPath) === true) {
            if (!is_dir($pluginDestPath)) {
                mkdir($pluginDestPath, 0777, true);
            }
            $zip->extractTo($pluginDestPath);
            $zip->close();
            
            // Delete the zip file to save space
            unlink($zipPath);
            
            return rtrim($pluginDestPath, '/') . '/' . $slug; // the extracted folder usually contains the slug directory
        }

        error_log("Failed to extract zip for: $slug");
        return false;
    }
    
    /**
     * Cleans up the temporary directory for a specific slug, or everything if no slug.
     */
    public function cleanup(?string $slug = null) {
        if ($slug) {
            $dir = $this->tempDir . '/' . $slug;
            if (is_dir($dir)) {
                $this->deleteDir($dir);
            }
        } else {
             $this->deleteDir($this->tempDir);
        }
    }
    
    private function deleteDir(string $dirPath) {
        if (!is_dir($dirPath)) {
            return;
        }
        $files = array_diff(scandir($dirPath), array('.', '..'));
        foreach ($files as $file) {
            $path = "$dirPath/$file";
            (is_dir($path)) ? $this->deleteDir($path) : unlink($path);
        }
        rmdir($dirPath);
    }
}
