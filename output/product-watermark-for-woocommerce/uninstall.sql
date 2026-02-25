-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('berocket_key_activated_plugins', 'berocket_framework_option_global', 'BeRocket_Framework_plugins_version_check', 'berocket_admin_notices', 'berocket_email_subscribed', 'berocket_last_close_notices_time', 'berocket_current_displayed_notice', 'berocket_admin_notices_last_on_options', 'berocket_admin_notices_rate_stars', 'berocket_information_notices', 'BeRocket_account_option', 'br_watermarked', 'berocket_plugin_paid_info', 'update_plugins', 'br_plugin_activation');
DELETE FROM wp_options WHERE option_name LIKE 'berocket_plugin_error_%';
DELETE FROM wp_options WHERE option_name LIKE '%_upgrade';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE 'berocket_framework_plugin_is_active_%';
DELETE FROM wp_options WHERE option_name LIKE '%_paid_info';
DELETE FROM wp_options WHERE option_name LIKE 'br_plugin_api_%';
DELETE FROM wp_options WHERE option_name LIKE 'brplugin_info_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('total_sales', 'berocket_post_order', 'br_watermark', '_thumbnail_id_watermarked', '_product_image_gallery_watermarked');
DELETE FROM wp_usermeta WHERE meta_key IN ('total_sales', 'berocket_post_order', 'br_watermark', '_thumbnail_id_watermarked', '_product_image_gallery_watermarked');
DELETE FROM wp_termmeta WHERE meta_key IN ('total_sales', 'berocket_post_order', 'br_watermark', '_thumbnail_id_watermarked', '_product_image_gallery_watermarked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('total_sales', 'berocket_post_order', 'br_watermark', '_thumbnail_id_watermarked', '_product_image_gallery_watermarked');

