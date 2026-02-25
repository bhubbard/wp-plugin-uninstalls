-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_mp_rated', 'woo_mp_authorize_net_title', 'woo_mp_authorize_net_test_mode', 'woo_mp_authorize_net_login_id', 'woo_mp_authorize_net_client_key', 'woo_mp_authorize_net_include_billing_details', 'woo_mp_authorize_net_include_shipping_details', 'woo_mp_authorize_net_transaction_key', 'woo_mp_eway_title', 'woo_mp_eway_include_billing_details', 'woo_mp_eway_include_shipping_details', 'woo_mp_eway_api_key', 'woo_mp_eway_api_password', 'woo_mp_eway_sandbox_mode', 'woo_mp_stripe_title', 'woo_mp_stripe_publishable_key', 'woo_mp_stripe_moto_enabled', 'woo_mp_stripe_secret_key', 'woo_mp_payment_processor', 'woo_mp_capture_payments', 'woo_mp_transaction_description', 'woo_mp_save_wc_payment_when', 'woo_mp_update_order_status_when', 'woo_mp_update_order_status_to', 'woo_mp_reduce_stock_levels_when', 'woo_mp_data_version', 'active_sitewide_plugins', 'woocommerce_version');

