-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_pcd_installed', 'wc_pcd_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'dpcd_product_cat_options', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_pcd_featured_cats', 'wc_pcd_layout', '_wp_page_template', 'thumbnail_id', 'wc_pcd_cat_special_offer');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_pcd_featured_cats', 'wc_pcd_layout', '_wp_page_template', 'thumbnail_id', 'wc_pcd_cat_special_offer');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_pcd_featured_cats', 'wc_pcd_layout', '_wp_page_template', 'thumbnail_id', 'wc_pcd_cat_special_offer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_pcd_featured_cats', 'wc_pcd_layout', '_wp_page_template', 'thumbnail_id', 'wc_pcd_cat_special_offer');

