-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_total_display', 'airwallex_enable_sandbox', 'airwallex_payment_descriptor', 'airwallex_payment_page_template', 'airwallex_connection_type', 'airwallex_submit_order_details', 'airwallex_temporary_order_status_after_decline', 'do_remote_logging', 'airwallex-online-payments-gatewayairwallex_afterpay_settings', 'airwallex-online-payments-gatewayairwallex_card_settings', 'airwallex-online-payments-gatewayairwallex_klarna_settings', 'airwallex-online-payments-gatewayairwallex_main_settings', 'airwallex-online-payments-gatewayairwallex_pos_settings', 'airwallex-online-payments-gatewayairwallex_wechat_settings', 'woocommerce_enable_signup_and_login_from_checkout', 'woocommerce_registration_generate_username', 'woocommerce_registration_generate_password', 'woocommerce_enable_guest_checkout', 'woocommerce_myaccount_page_id', 'woocommerce_checkout_phone_field', 'airwallex_client_id', 'airwallex_api_key', 'airwallex_webhook_secret', 'airwallex_order_status_pending', 'airwallex_order_status_authorized', 'airwallex_cronjob_interval', 'airwallex_do_remote_logging', 'airwallex_connection_clicked_demo', 'airwallex_connection_clicked_prod', 'airwallex_payment_method_card_page_id', 'airwallex_payment_method_wechat_page_id', 'airwallex_payment_method_all_page_id', 'airwallex_api_key_demo', 'airwallex_client_id_demo', 'airwallex_webhook_secret_demo', 'airwallex_account_id_demo', 'airwallex_account_id', 'airwallex_account_name_demo', 'airwallex_account_name', 'woocommerce_currency_pos', 'airwallex_merchant_country');
DELETE FROM wp_options WHERE option_name LIKE 'airwallex_connection_clicked_%';
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_pos_device';
DELETE FROM wp_options WHERE option_name LIKE 'airwallex_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('number_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('number_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('number_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('number_type');

