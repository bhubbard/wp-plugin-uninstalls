-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('htpm_options', 'htpm_dashboard_options', 'htpm_diagnostic_data_agreed', 'htpm_diagnostic_data_notice', 'wp_plugin_manager_delete_data_fetch_cache', 'htpm_status', 'htpm_available_post_types', 'htpm_installed', 'WPPluginManagerPro_lic_email', 'update_plugins', 'hastech-notice-id-htpm-diagnostic-notice');
DELETE FROM wp_options WHERE option_name LIKE '%_htiop';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('htpm_changelog_read');
DELETE FROM wp_usermeta WHERE meta_key IN ('htpm_changelog_read');
DELETE FROM wp_termmeta WHERE meta_key IN ('htpm_changelog_read');
DELETE FROM wp_commentmeta WHERE meta_key IN ('htpm_changelog_read');

