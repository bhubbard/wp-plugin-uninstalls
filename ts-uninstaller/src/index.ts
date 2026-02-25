import fs from 'fs-extra';
import path from 'path';
import pLimit from 'p-limit';
import { PluginDownloader } from './Downloader';
import { PluginAnalyzer } from './Analyzer';
import { PhpGenerator } from './Generators/PhpGenerator';
import { SqlGenerator } from './Generators/SqlGenerator';
import { BashGenerator } from './Generators/BashGenerator';

const slugsFile = path.resolve(__dirname, '../../all-slugs.txt');
const outputDir = path.resolve(__dirname, '../../output');

// Run 10 parallel extractions to avoid taking up all RAM and TCP sockets
const limit = pLimit(10);

async function processPlugin(
    slug: string,
    downloader: PluginDownloader,
    analyzer: PluginAnalyzer,
    phpGen: PhpGenerator,
    sqlGen: SqlGenerator,
    bashGen: BashGenerator
) {
    const pluginOutputDir = path.join(outputDir, slug);
    const flagsFile = path.join(pluginOutputDir, 'findings.json');

    // Skip if we already successfully processed and created findings
    if (await fs.pathExists(flagsFile)) {
        return;
    }

    try {
        const extractedPath = await downloader.downloadAndExtract(slug);

        try {
            const findings = await analyzer.analyzeDirectory(extractedPath);

            await fs.ensureDir(pluginOutputDir);

            // Generate scripts
            const phpCode = phpGen.generate(findings);
            const sqlCode = sqlGen.generate(findings);
            const bashCode = bashGen.generate(findings);

            await fs.writeFile(path.join(pluginOutputDir, 'uninstall.php'), phpCode);
            await fs.writeFile(path.join(pluginOutputDir, 'uninstall.sql'), sqlCode);
            await fs.writeFile(path.join(pluginOutputDir, 'uninstall.sh'), bashCode);
            await fs.writeFile(flagsFile, JSON.stringify(findings, null, 2));

            // Make bash script executable
            await fs.chmod(path.join(pluginOutputDir, 'uninstall.sh'), 0o755);

        } finally {
            await downloader.cleanup(extractedPath);
        }
    } catch (error: any) {
        // Failing for a plugin could just mean it doesn't exist or AST broke
        console.error(`[ERROR] ${slug}: ${error.message}`);
    }
}

async function main() {
    if (!await fs.pathExists(slugsFile)) {
        console.error(`Slugs file not found: ${slugsFile}`);
        process.exit(1);
    }

    console.log(`Loading slugs from ${slugsFile}...`);
    const allSlugs = (await fs.readFile(slugsFile, 'utf-8'))
        .split('\n')
        .map(s => s.trim())
        .filter(s => s.length > 0);

    console.log(`Found ${allSlugs.length} slugs. Setting up...`);

    const downloader = new PluginDownloader();
    const analyzer = new PluginAnalyzer();
    const phpGen = new PhpGenerator();
    const sqlGen = new SqlGenerator();
    const bashGen = new BashGenerator();

    await fs.ensureDir(outputDir);

    let processedCount = 0;
    const totalCount = allSlugs.length;

    console.log(`Starting queue with 10 concurrent streams...`);

    const tasks = allSlugs.map((slug) => limit(async () => {
        await processPlugin(slug, downloader, analyzer, phpGen, sqlGen, bashGen);

        processedCount++;
        if (processedCount % 50 === 0) {
            console.log(`Progress: ${processedCount} / ${totalCount} (${((processedCount / totalCount) * 100).toFixed(2)}%)`);
        }
    }));

    await Promise.all(tasks);

    console.log(`Finished processing ${totalCount} plugins!`);
}

main().catch(console.error);
