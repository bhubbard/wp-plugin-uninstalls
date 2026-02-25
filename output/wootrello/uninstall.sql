-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wootrelloLogStatus', 'wootrello_include_products_in_card', 'wootrello_trello_API', 'wootrello_installed', 'wootrello_re_installed', 'wootrello_access_code', 'wootrello_trello_settings', 'wc_fields_billing', 'wc_fields_shipping', 'wc_fields_additional', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', 'wootrello_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', 'wootrello_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', 'wootrello_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', 'wootrello_status');

