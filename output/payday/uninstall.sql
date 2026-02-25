-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('payday_invoice_date_option', 'payday_send_email_on_invoice_create', 'woocommerce_calc_taxes', 'woocommerce_prices_include_tax', 'payday_client_id', 'payday_client_secret', 'payday_api_endpoint', 'payday_upsert_products_response', 'payday_login_unsucessful_admin_notice', 'payday_login_invalid_credentials_admin_notice');
DELETE FROM wp_options WHERE option_name LIKE 'payday_payment_method_%';
DELETE FROM wp_options WHERE option_name LIKE '%_create_invoice_on_action';

