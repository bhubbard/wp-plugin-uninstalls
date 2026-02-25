-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cashflows_card_settings', 'woocommerce_cashflows_paypal_settings', 'iccf_debug', 'iccf_develop', 'iccf_prod_api_key', 'iccf_prod_configuration_id', 'iccf_int_api_key', 'iccf_int_configuration_id', 'woocommerce_hold_stock_minutes', 'iccf_additional_data', 'iccf_google_ananlytics', 'iccf_store_customer_data', 'iccf_log_days_to_keep');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cashflows_int_customerReference', 'cashflows_prod_customerReference');
DELETE FROM wp_usermeta WHERE meta_key IN ('cashflows_int_customerReference', 'cashflows_prod_customerReference');
DELETE FROM wp_termmeta WHERE meta_key IN ('cashflows_int_customerReference', 'cashflows_prod_customerReference');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cashflows_int_customerReference', 'cashflows_prod_customerReference');

