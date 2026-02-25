-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_ca_condition_type_cache', 'woocommerce_shop_page_id', 'cas_db_version', 'cas_pro', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'qtranslate_enabled_languages', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ca_taxonomy', '_ca_autoselect', '_edit_last', '_ca_handle', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ca_taxonomy', '_ca_autoselect', '_edit_last', '_ca_handle', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ca_taxonomy', '_ca_autoselect', '_edit_last', '_ca_handle', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ca_taxonomy', '_ca_autoselect', '_edit_last', '_ca_handle', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_cas_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_cas_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_cas_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_cas_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%host';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%host';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%host';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%host';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%deactivate_time';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%deactivate_time';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%deactivate_time';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%deactivate_time';

