-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cky_cookie_consent_lite_db_version', 'wt_cli_first_time_activated_plugin', 'cookielawinfo_privacy_overview_content_settings', 'cli_pg_content_data', 'CLI_BYPASS', 'finished_splitting_shared_terms', 'cookielawinfo_thirdparty_settings', 'cookielawinfo_necessary_settings', 'wt_cli_cookie_db_version', 'wt_cli_db_version', 'wt_cli_version', 'wt_cli_cookieyes_options', 'wt_cli_ckyes_branding', 'wt_cli_ckyes_scan_options', 'cli_heading_version', 'cookielawinfo_js_blocking', 'cky_plugin_migrate_status', 'cli_script_blocker_status', 'cky_first_time_activated_plugin', 'cky_banner_template', 'cky_webapp_connected', 'cky_gcm_settings', 'cky_scan_details', 'cky_settings', 'cky_migration_options', 'cky_banners_table_version', 'cky_cookie_table_version', 'cky_cookie_category_table_version', 'cky_missing_tables', 'cky_connect_expand', 'cky_connect_notice', 'cky_file_write_access', 'cky_admin_notices', '_wt_cli_first_time_activation', 'wt_cli_script_blocker_notice', '_cky_first_time_install');
DELETE FROM wp_options WHERE option_name LIKE '%_activation_status';
DELETE FROM wp_options WHERE option_name LIKE '%_transient_prefix';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cli_cookie_duration', '_cli_cookie_sensitivity', '_cli_cookie_slugid', '_cli_cookie_type', 'CLIpriority');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cli_cookie_duration', '_cli_cookie_sensitivity', '_cli_cookie_slugid', '_cli_cookie_type', 'CLIpriority');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cli_cookie_duration', '_cli_cookie_sensitivity', '_cli_cookie_slugid', '_cli_cookie_type', 'CLIpriority');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cli_cookie_duration', '_cli_cookie_sensitivity', '_cli_cookie_slugid', '_cli_cookie_type', 'CLIpriority');

