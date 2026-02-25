-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cwpt_show_migration_notice', 'cwpt_enable_multiplier', 'change_woocommerce_price_title_db_version', 'cwpt_woocommerce_price_title', 'cwpt_apply_on_all_products', 'cwpt_woocommerce_hide_price_title', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cwpt_price_title', '_cwpt_hide_price', '_cwpt_apply_on_all_wc_pages');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cwpt_price_title', '_cwpt_hide_price', '_cwpt_apply_on_all_wc_pages');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cwpt_price_title', '_cwpt_hide_price', '_cwpt_apply_on_all_wc_pages');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cwpt_price_title', '_cwpt_hide_price', '_cwpt_apply_on_all_wc_pages');

