import { PluginFootprints } from '../Analyzer';

export class BashGenerator {
    public generate(findings: PluginFootprints): string {
        let code = `#!/bin/bash\n# WP-CLI Uninstall Script\n\n`;

        if (findings.options.length > 0) {
            code += `# Delete Options\n`;
            for (const option of findings.options) {
                if (option.includes('*')) {
                    const sqlLike = option.replace(/\*/g, '%');
                    code += `wp db query "DELETE FROM wp_options WHERE option_name LIKE '${sqlLike}'"\n`;
                } else {
                    code += `wp option delete '${option}'\n`;
                }
            }
            code += `\n`;
        }

        if (findings.transients.length > 0) {
            code += `# Delete Transients\n`;
            for (const trans of findings.transients) {
                if (trans.includes('*')) {
                    const sqlLike = trans.replace(/\*/g, '%');
                    code += `wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_${sqlLike}' OR option_name LIKE '_site_transient_${sqlLike}'"\n`;
                } else {
                    code += `wp transient delete '${trans}'\n`;
                }
            }
            code += `\n`;
        }

        if (findings.cron_jobs.length > 0) {
            code += `# Clear Cron Jobs\n`;
            for (const cron of findings.cron_jobs) {
                if (!cron.includes('*')) {
                    code += `wp cron event delete '${cron}'\n`;
                }
            }
            code += `\n`;
        }

        if (findings.metadata.length > 0 || findings.custom_tables.length > 0) {
            code += `# Direct DB Queries (Fallback)\n`;
            if (findings.metadata.length > 0) {
                for (const meta of findings.metadata) {
                    if (meta.includes('*')) {
                        const sqlLike = meta.replace(/\*/g, '%');
                        code += `wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '${sqlLike}'"\n`;
                        code += `wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '${sqlLike}'"\n`;
                        code += `wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '${sqlLike}'"\n`;
                        code += `wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '${sqlLike}'"\n`;
                    } else {
                        code += `wp db query "DELETE FROM wp_postmeta WHERE meta_key = '${meta}'"\n`;
                        code += `wp db query "DELETE FROM wp_usermeta WHERE meta_key = '${meta}'"\n`;
                        code += `wp db query "DELETE FROM wp_termmeta WHERE meta_key = '${meta}'"\n`;
                        code += `wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '${meta}'"\n`;
                    }
                }
            }

            if (findings.custom_tables.length > 0) {
                for (const table of findings.custom_tables) {
                    let actualTable = table.replace(/\{\$wpdb->prefix\}/g, '').replace(/^\_/, '');
                    code += `wp db query "DROP TABLE IF EXISTS wp_${actualTable}"\n`;
                }
            }
        }

        return code;
    }
}
