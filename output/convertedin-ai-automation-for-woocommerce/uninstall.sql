-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ConvertedIn_WooCommerce_loggedIn_in_platform', 'ConvertedIn_WooCommerce_api_token', 'ConvertedIn_WooCommerce_Pixel_Code', 'ConvertedIn_WooCommerce_admin_email', 'woocommerce_default_country', 'ConvertedIn_WooCommerce_initialSyncDone', 'ConvertedIn_WooCommerce_redirect_to_installation', 'ConvertedIn_WooCommerce_baseUrl', 'ConvertedIn_WooCommerce_users_last_sync', 'ConvertedIn_WooCommerce_orders_last_sync', 'ConvertedIn_WooCommerce_products_last_sync', 'ConvertedIn_WooCommerce_categories_last_sync', 'active_sitewide_plugins', 'ConvertedIn_WooCommerce_version');

