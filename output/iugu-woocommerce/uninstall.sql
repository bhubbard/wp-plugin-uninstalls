-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcbcf_settings', 'iugu_subscription_discount_type', 'woocommerce_iugu-credit-card_settings', 'woocommerce_iugu-payment-booklets_settings', 'woocommerce_iugu-bank-slip_settings', '_wc_iugu_webhook_created', 'woocommerce_enable_guest_checkout', 'woocommerce_enable_signup_and_login_from_checkout');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_iugu_number_installments', '_iugu_customer_id_date_validation', '_validou_cpf', '_iugu_customer_id', '_iugu_payable_with', 'user_status', 'user_status_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('_iugu_number_installments', '_iugu_customer_id_date_validation', '_validou_cpf', '_iugu_customer_id', '_iugu_payable_with', 'user_status', 'user_status_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('_iugu_number_installments', '_iugu_customer_id_date_validation', '_validou_cpf', '_iugu_customer_id', '_iugu_payable_with', 'user_status', 'user_status_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_iugu_number_installments', '_iugu_customer_id_date_validation', '_validou_cpf', '_iugu_customer_id', '_iugu_payable_with', 'user_status', 'user_status_message');

