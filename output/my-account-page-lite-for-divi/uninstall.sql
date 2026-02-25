-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_orders_endpoint', 'woocommerce_myaccount_downloads_endpoint', 'woocommerce_myaccount_edit_address_endpoint', 'woocommerce_myaccount_payment_methods_endpoint', 'woocommerce_myaccount_edit_account_endpoint', 'woocommerce_logout_endpoint', 'woocommerce_myaccount_subscriptions_endpoint', 'woocommerce_myaccount_teams_area_endpoint', 'mapdl_settings', 'mapdl_endpoints', 'mapdl_flush_rewrite');

