-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('enwbvs_is_custom_shop_page_option', 'enwbvs_custom_attribute_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('enwbvs_is_custom_shop_page_option', 'enwbvs_custom_attribute_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('enwbvs_is_custom_shop_page_option', 'enwbvs_custom_attribute_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('enwbvs_is_custom_shop_page_option', 'enwbvs_custom_attribute_settings');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'product_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'product_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'product_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'product_term_color2_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'product_term_color2_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'product_term_color2_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product_term_color2_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'term_tt_text_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'term_tt_text_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'term_tt_text_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'term_tt_text_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'term_tt_img_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'term_tt_img_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'term_tt_img_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'term_tt_img_%';

