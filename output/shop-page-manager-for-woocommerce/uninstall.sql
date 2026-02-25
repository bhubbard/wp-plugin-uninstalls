-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shop_page_id', 'woocommerce_cart_redirect_after_add', 'woocommerce_enable_ajax_add_to_cart', 'woocommerce_shop_page_display', 'woocommerce_category_archive_display', 'woocommerce_default_catalog_orderby', 'woocommerce_catalog_columns', 'woo_shop_manager_api_get_response', 'wp_zamartz_admin_event_tracker', 'zamartz_api_admin_notice_data', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%visual_customizer';
DELETE FROM wp_options WHERE option_name LIKE '%ruleset_toggle';
DELETE FROM wp_options WHERE option_name LIKE '%cron_log';
DELETE FROM wp_options WHERE option_name LIKE '%api_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%api_password';
DELETE FROM wp_options WHERE option_name LIKE '%api_product_id';
DELETE FROM wp_options WHERE option_name LIKE '%api_purchase_emails';
DELETE FROM wp_options WHERE option_name LIKE '%api_get_response';
DELETE FROM wp_options WHERE option_name LIKE '%api_admin_notice_data';
DELETE FROM wp_options WHERE option_name LIKE '%network_admin_api_status';

