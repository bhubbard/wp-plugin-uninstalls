import fs from 'fs-extra';
import path from 'path';

const outputDir = path.resolve(__dirname, '../../output');

async function main() {
    console.log(`Scanning output directory for findings...`);

    if (!await fs.pathExists(outputDir)) {
        console.error("Output directory not found!");
        return;
    }

    const pluginFolders = await fs.readdir(outputDir);
    let totalPlugins = 0;
    let hasUninstallCount = 0;
    let hasOptionsCount = 0;
    let hasTransientsCount = 0;
    let hasCronCount = 0;
    let hasMetadataCount = 0;
    let hasCustomTablesCount = 0;
    let zeroFindingsCount = 0;

    let worstOffenders: { slug: string; totalItems: number }[] = [];

    for (const folder of pluginFolders) {
        const findingsPath = path.join(outputDir, folder, 'findings.json');

        try {
            if (await fs.pathExists(findingsPath)) {
                totalPlugins++;
                const data = await fs.readJson(findingsPath);
                let hasAny = false;
                let totalItems = 0;

                if (data.has_uninstall === true) {
                    hasUninstallCount++;
                    hasAny = true;
                }

                if (data.options && data.options.length > 0) {
                    hasOptionsCount++;
                    totalItems += data.options.length;
                    hasAny = true;
                }

                if (data.custom_tables && data.custom_tables.length > 0) {
                    hasCustomTablesCount++;
                    totalItems += data.custom_tables.length;
                    hasAny = true;
                }

                if (data.transients && data.transients.length > 0) {
                    hasTransientsCount++;
                    totalItems += data.transients.length;
                    hasAny = true;
                }
                if (data.cron_jobs && data.cron_jobs.length > 0) {
                    hasCronCount++;
                    totalItems += data.cron_jobs.length;
                    hasAny = true;
                }
                if (data.metadata && data.metadata.length > 0) {
                    hasMetadataCount++;
                    totalItems += data.metadata.length;
                    hasAny = true;
                }

                if (!hasAny) {
                    zeroFindingsCount++;
                }

                if (totalItems > 0) {
                    worstOffenders.push({ slug: folder, totalItems });
                }
            }
        } catch (e) {
            // skip invalid JSON
        }
    }

    worstOffenders.sort((a, b) => b.totalItems - a.totalItems);
    const top10Worst = worstOffenders.slice(0, 10);

    console.log(`\n--- UNINSTALLER STATS ---`);
    console.log(`Total Valid Plugins Processed: ${totalPlugins.toLocaleString()}`);
    console.log(`Plugins with an existing uninstall.php: ${hasUninstallCount.toLocaleString()} (${((hasUninstallCount / totalPlugins) * 100).toFixed(2)}%)`);
    console.log(`Plugins with ZERO findings: ${zeroFindingsCount.toLocaleString()} (${((zeroFindingsCount / totalPlugins) * 100).toFixed(2)}%)`);

    console.log(`\n--- BREAKDOWN OF LEFTOVERS ---`);
    console.log(`Leaves Options/Settings: ${hasOptionsCount.toLocaleString()} (${((hasOptionsCount / totalPlugins) * 100).toFixed(2)}%)`);
    console.log(`Leaves Transients/Cache: ${hasTransientsCount.toLocaleString()} (${((hasTransientsCount / totalPlugins) * 100).toFixed(2)}%)`);
    console.log(`Leaves Cron Jobs: ${hasCronCount.toLocaleString()} (${((hasCronCount / totalPlugins) * 100).toFixed(2)}%)`);
    console.log(`Leaves Post/User Metadata: ${hasMetadataCount.toLocaleString()} (${((hasMetadataCount / totalPlugins) * 100).toFixed(2)}%)`);
    console.log(`Leaves Custom Database Tables: ${hasCustomTablesCount.toLocaleString()} (${((hasCustomTablesCount / totalPlugins) * 100).toFixed(2)}%)`);

    console.log(`\n--- TOP 10 WORST OFFENDERS (Most database items left behind) ---`);
    top10Worst.forEach((plugin, index) => {
        console.log(`${index + 1}. ${plugin.slug} (${plugin.totalItems.toLocaleString()} items)`);
    });
}

main().catch(console.error);
