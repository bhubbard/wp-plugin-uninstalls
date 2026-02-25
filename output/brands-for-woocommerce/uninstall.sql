-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('berocket_key_activated_plugins', 'berocket_framework_option_global', 'BeRocket_Framework_plugins_version_check', 'berocket_admin_notices', 'berocket_email_subscribed', 'berocket_last_close_notices_time', 'berocket_current_displayed_notice', 'berocket_admin_notices_last_on_options', 'berocket_admin_notices_rate_stars', 'berocket_information_notices', 'BeRocket_account_option', 'berocket_brands_permalink', 'woocommerce_prepend_shop_page_to_urls', 'berocket_plugin_paid_info', 'update_plugins', 'br_plugin_activation');
DELETE FROM wp_options WHERE option_name LIKE 'berocket_plugin_error_%';
DELETE FROM wp_options WHERE option_name LIKE '%_upgrade';
DELETE FROM wp_options WHERE option_name LIKE 'berocket_framework_plugin_is_active_%';
DELETE FROM wp_options WHERE option_name LIKE '%_paid_info';
DELETE FROM wp_options WHERE option_name LIKE 'br_plugin_api_%';
DELETE FROM wp_options WHERE option_name LIKE 'brplugin_info_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('brand_image_url', 'total_sales', 'berocket_post_order', 'brand_banner_url', 'br_brand_url', 'exclude_berocket_brand', 'br_brand_order', 'br_brand_tooltip', 'br_brand_category', 'br_brand_related');
DELETE FROM wp_usermeta WHERE meta_key IN ('brand_image_url', 'total_sales', 'berocket_post_order', 'brand_banner_url', 'br_brand_url', 'exclude_berocket_brand', 'br_brand_order', 'br_brand_tooltip', 'br_brand_category', 'br_brand_related');
DELETE FROM wp_termmeta WHERE meta_key IN ('brand_image_url', 'total_sales', 'berocket_post_order', 'brand_banner_url', 'br_brand_url', 'exclude_berocket_brand', 'br_brand_order', 'br_brand_tooltip', 'br_brand_category', 'br_brand_related');
DELETE FROM wp_commentmeta WHERE meta_key IN ('brand_image_url', 'total_sales', 'berocket_post_order', 'brand_banner_url', 'br_brand_url', 'exclude_berocket_brand', 'br_brand_order', 'br_brand_tooltip', 'br_brand_category', 'br_brand_related');

