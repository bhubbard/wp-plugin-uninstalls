-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pixel_apfw_plugin_options', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'pixel_apfw_active_promo_id', 'pixel_apfw_last_active_promo_id', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'pixel_apfw_conflict_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pixel_apfw_start_datetime', '_pixel_apfw_end_datetime', '_pixel_apfw_description', '_pixel_apfw_color', '_pixel_apfw_promo_image_id', '_pixel_apfw_woo_coupon_id', '_pixel_apfw_primary_coupon_code', '_pixel_apfw_primary_coupon_amount', '_pixel_apfw_discount_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pixel_apfw_start_datetime', '_pixel_apfw_end_datetime', '_pixel_apfw_description', '_pixel_apfw_color', '_pixel_apfw_promo_image_id', '_pixel_apfw_woo_coupon_id', '_pixel_apfw_primary_coupon_code', '_pixel_apfw_primary_coupon_amount', '_pixel_apfw_discount_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pixel_apfw_start_datetime', '_pixel_apfw_end_datetime', '_pixel_apfw_description', '_pixel_apfw_color', '_pixel_apfw_promo_image_id', '_pixel_apfw_woo_coupon_id', '_pixel_apfw_primary_coupon_code', '_pixel_apfw_primary_coupon_amount', '_pixel_apfw_discount_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pixel_apfw_start_datetime', '_pixel_apfw_end_datetime', '_pixel_apfw_description', '_pixel_apfw_color', '_pixel_apfw_promo_image_id', '_pixel_apfw_woo_coupon_id', '_pixel_apfw_primary_coupon_code', '_pixel_apfw_primary_coupon_amount', '_pixel_apfw_discount_type');

