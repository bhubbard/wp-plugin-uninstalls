import { PluginFootprints } from '../Analyzer';

export class SqlGenerator {
    public generate(findings: PluginFootprints): string {
        let code = `-- WordPress Plugin Uninstall SQL Script\n\n`;

        if (findings.options.length > 0 || findings.transients.length > 0) {
            code += `-- Delete Options & Transients\n`;

            const staticKeys: string[] = [];
            const wildcardKeys: string[] = [];

            for (const key of [...findings.options, ...findings.transients]) {
                if (key.includes('*')) wildcardKeys.push(key.replace(/\*/g, '%'));
                else staticKeys.push(key);
            }

            if (staticKeys.length > 0) {
                const batchSize = 50;
                for (let i = 0; i < staticKeys.length; i += batchSize) {
                    const batch = staticKeys.slice(i, i + batchSize);
                    const quoted = batch.map(k => `'${k}'`).join(', ');
                    code += `DELETE FROM wp_options WHERE option_name IN (${quoted});\n`;
                }
            }

            for (const wildcard of wildcardKeys) {
                code += `DELETE FROM wp_options WHERE option_name LIKE '${wildcard}';\n`;
            }
            code += `\n`;
        }

        if (findings.metadata.length > 0) {
            code += `-- Delete Metadata\n`;

            const staticKeys: string[] = [];
            const wildcardKeys: string[] = [];

            for (const key of findings.metadata) {
                if (key.includes('*')) wildcardKeys.push(key.replace(/\*/g, '%'));
                else staticKeys.push(key);
            }

            if (staticKeys.length > 0) {
                const batchSize = 50;
                for (let i = 0; i < staticKeys.length; i += batchSize) {
                    const batch = staticKeys.slice(i, i + batchSize);
                    const quoted = batch.map(k => `'${k}'`).join(', ');
                    code += `DELETE FROM wp_postmeta WHERE meta_key IN (${quoted});\n`;
                    code += `DELETE FROM wp_usermeta WHERE meta_key IN (${quoted});\n`;
                    code += `DELETE FROM wp_termmeta WHERE meta_key IN (${quoted});\n`;
                    code += `DELETE FROM wp_commentmeta WHERE meta_key IN (${quoted});\n`;
                }
            }

            for (const wildcard of wildcardKeys) {
                code += `DELETE FROM wp_postmeta WHERE meta_key LIKE '${wildcard}';\n`;
                code += `DELETE FROM wp_usermeta WHERE meta_key LIKE '${wildcard}';\n`;
                code += `DELETE FROM wp_termmeta WHERE meta_key LIKE '${wildcard}';\n`;
                code += `DELETE FROM wp_commentmeta WHERE meta_key LIKE '${wildcard}';\n`;
            }

            code += `\n`;
        }

        if (findings.custom_tables.length > 0) {
            code += `-- Drop Custom Tables\n`;
            for (const table of findings.custom_tables) {
                // Remove prefix variables for raw sql, assuming default 'wp_'
                let actualTable = table.replace(/\{\$wpdb->prefix\}/g, '').replace(/^\_/, '');
                code += `DROP TABLE IF EXISTS wp_${actualTable};\n`;
            }
            code += `\n`;
        }

        return code;
    }
}
