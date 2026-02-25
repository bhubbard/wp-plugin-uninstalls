import { PluginFootprints } from '../Analyzer';

export class PhpGenerator {
    public generate(findings: PluginFootprints): string {
        let code = `<?php\n\n// If uninstall not called from WordPress, then exit.\nif ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {\n\texit;\n}\n\n`;

        if (findings.options.length > 0) {
            code += `// Delete Options\n`;
            for (const option of findings.options) {
                if (option.includes('*')) {
                    const sqlLike = option.replace(/\*/g, '%');
                    code += `global $wpdb;\n`;
                    code += `$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '${sqlLike}' ) );\n`;
                    code += `foreach ( $options as $opt ) {\n\tdelete_option( $opt );\n\tdelete_site_option( $opt );\n}\n`;
                } else {
                    code += `delete_option('${option}');\n`;
                    code += `delete_site_option('${option}');\n`;
                }
            }
            code += `\n`;
        }

        if (findings.transients.length > 0) {
            code += `// Delete Transients\n`;
            for (const trans of findings.transients) {
                if (trans.includes('*')) {
                    const sqlLike = trans.replace(/\*/g, '%');
                    code += `global $wpdb;\n`;
                    const escaped = `_transient_${sqlLike}`;
                    code += `$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '${escaped}', '_site_transient_${sqlLike}' ) );\n`;
                    code += `foreach ( $transients as $transient ) {\n\tdelete_option( $transient );\n}\n`;
                } else {
                    code += `delete_transient('${trans}');\n`;
                    code += `delete_site_transient('${trans}');\n`;
                }
            }
            code += `\n`;
        }

        if (findings.cron_jobs.length > 0) {
            code += `// Clear Cron Jobs\n`;
            for (const cron of findings.cron_jobs) {
                if (!cron.includes('*')) {
                    code += `wp_clear_scheduled_hook('${cron}');\n`;
                }
            }
            code += `\n`;
        }

        if (findings.metadata.length > 0) {
            code += `// Clear Metadata\n`;
            code += `global $wpdb;\n`;
            for (const meta of findings.metadata) {
                if (meta.includes('*')) {
                    const sqlLike = meta.replace(/\*/g, '%');
                    code += `$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '${sqlLike}' ) );\n`;
                    code += `$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '${sqlLike}' ) );\n`;
                    code += `$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '${sqlLike}' ) );\n`;
                    code += `$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '${sqlLike}' ) );\n`;
                } else {
                    code += `$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '${meta}' ) );\n`;
                    code += `$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '${meta}' ) );\n`;
                    code += `$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '${meta}' ) );\n`;
                    code += `$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '${meta}' ) );\n`;
                }
            }
            code += `\n`;
        }

        if (findings.custom_tables.length > 0) {
            code += `// Drop Custom Tables\n`;
            code += `global $wpdb;\n`;
            for (const table of findings.custom_tables) {
                let actualTable = table;
                // If it looks like {$wpdb->prefix}tablename, replace it with proper syntax
                actualTable = actualTable.replace(/\{\$wpdb->prefix\}/g, '{$wpdb->prefix}');
                // Because of string literal vs variable substitution, we'll just write it securely
                if (actualTable.includes('wpdb->prefix')) {
                    code += `$wpdb->query("DROP TABLE IF EXISTS ${actualTable}");\n`;
                } else {
                    code += `$wpdb->query("DROP TABLE IF EXISTS {$wpdb->prefix}${actualTable}");\n`;
                }
            }
        }

        return code;
    }
}
