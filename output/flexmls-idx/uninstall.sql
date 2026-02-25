-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fmc_settings', 'fmc_cache_version', 'fmc_db_cache_key', 'fmc_tracked_transients', 'fmc_plugin_version', 'fmc_my_type', 'fmc_my_office', 'fmc_my_company', 'fmc_my_id', 'active_sitewide_plugins', 'fmc_permabase_changed', 'fmc_destlink_changed', 'fmc_cache_tracker', 'flexmls_auth_token', 'flexmls_auth_failures_timestamps', 'fmc_api', 'fmc_last_authtoken');
DELETE FROM wp_options WHERE option_name LIKE 'fmc_cache_%';
DELETE FROM wp_options WHERE option_name LIKE 'flexmls_query_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

