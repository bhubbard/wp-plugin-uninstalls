-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_payzen_settings', 'woocommerce_payzensubscription_settings', 'woocommerce_enable_signup_and_login_from_checkout', 'woocommerce_enable_signup_from_checkout_for_subscriptions', 'woocommerce_payzenwcssubscription_settings', 'woocommerce_payzenstd_settings', 'woocommerce_payzenregroupedother_settings', 'woocommerce_payzenmulti_settings', 'woocommerce_payzenchoozeo_settings', 'woocommerce_payzenklarna_settings', 'woocommerce_payzenfranfinance_settings', 'woocommerce_payzensepa_settings', 'site_name', 'payzen_email_send_msg', 'payzen_session_id', 'payzen_cancelled_subscription_error_msg', 'payzen_update_subscription_error_msg', 'payzen_renewal_error_msg', 'payzen_other_methods', 'payzen_online_refund_result');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'payzen_token_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'payzen_token_data_identifier_%';
DELETE FROM wp_options WHERE option_name LIKE 'payzen_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'payzen_token_identifier_%';
DELETE FROM wp_options WHERE option_name LIKE 'payzenfranfinance_option_%';
DELETE FROM wp_options WHERE option_name LIKE 'payzenmulti_option_%';
DELETE FROM wp_options WHERE option_name LIKE 'payzenregroupedother_card_type_%';
DELETE FROM wp_options WHERE option_name LIKE 'payzen_notices_%';
DELETE FROM wp_options WHERE option_name LIKE 'payzenchoozeo_option_%';
DELETE FROM wp_options WHERE option_name LIKE 'payzen_hide_smartbutton_%';
DELETE FROM wp_options WHERE option_name LIKE 'payzen_js_vars_%';
DELETE FROM wp_options WHERE option_name LIKE 'payzen_id_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'payzensubscription_change_payment_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Transaction ID', 'Sequence number', 'payzenfranfinance_option', 'payzenmulti_option', 'payzenstd_card_type', 'payzenmulti_card_type', 'payzenregroupedother_card_type', 'Card number', 'IBAN / BIC', 'Means of payment', 'Card expiry', 'Authorized amount', 'Installments number', 'payzen_token', 'Subscription ID', 'Subscription amount', 'Effect date', 'Initial amount', 'Initial amount count', '_payment_method_title', 'Recurrence number');
DELETE FROM wp_usermeta WHERE meta_key IN ('Transaction ID', 'Sequence number', 'payzenfranfinance_option', 'payzenmulti_option', 'payzenstd_card_type', 'payzenmulti_card_type', 'payzenregroupedother_card_type', 'Card number', 'IBAN / BIC', 'Means of payment', 'Card expiry', 'Authorized amount', 'Installments number', 'payzen_token', 'Subscription ID', 'Subscription amount', 'Effect date', 'Initial amount', 'Initial amount count', '_payment_method_title', 'Recurrence number');
DELETE FROM wp_termmeta WHERE meta_key IN ('Transaction ID', 'Sequence number', 'payzenfranfinance_option', 'payzenmulti_option', 'payzenstd_card_type', 'payzenmulti_card_type', 'payzenregroupedother_card_type', 'Card number', 'IBAN / BIC', 'Means of payment', 'Card expiry', 'Authorized amount', 'Installments number', 'payzen_token', 'Subscription ID', 'Subscription amount', 'Effect date', 'Initial amount', 'Initial amount count', '_payment_method_title', 'Recurrence number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Transaction ID', 'Sequence number', 'payzenfranfinance_option', 'payzenmulti_option', 'payzenstd_card_type', 'payzenmulti_card_type', 'payzenregroupedother_card_type', 'Card number', 'IBAN / BIC', 'Means of payment', 'Card expiry', 'Authorized amount', 'Installments number', 'payzen_token', 'Subscription ID', 'Subscription amount', 'Effect date', 'Initial amount', 'Initial amount count', '_payment_method_title', 'Recurrence number');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_identifier';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_identifier';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_identifier';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_identifier';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_masked_pan';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_masked_pan';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_masked_pan';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_masked_pan';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_card_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_card_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_card_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_card_type';

