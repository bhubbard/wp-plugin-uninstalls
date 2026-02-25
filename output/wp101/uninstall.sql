-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp101-available-series', 'wp101_api_key', 'wp101_custom_topics', 'wp101_hidden_topics', 'wp101-bulk-migration-lock', 'wp101_db_version', 'wp101_admin_restriction', 'wp101_topics', 'wp101_jetpack_topics', 'wp101_woocommerce_topics', 'wp101_wpseo_topics', 'wp101_message', 'wp101_get_admin_count', 'wp101_api_key_valid');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp101-dismissed-notifications');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp101-dismissed-notifications');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp101-dismissed-notifications');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp101-dismissed-notifications');

