-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_movider_sms_account_apikey', 'wc_movider_sms_account_secretkey', 'wc_movider_sms_from_name', 'wc_movider_sms_checkout_optin_checkbox_default', 'wc_movider_sms_checkout_optin_checkbox_label', 'wc_movider_sms_log_errors', 'wc_movider_sms_enable_admin_sms', 'wc_movider_sms_admin_sms_template', 'wc_movider_sms_admin_sms_recipients', 'wc_movider_sms_send_sms_order_statuses', 'wc_movider_sms_default_sms_template', 'wc_movider_sms_balance');
DELETE FROM wp_options WHERE option_name LIKE '%_sms_template';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_movider_sms_optin', '_billing_phone', '_billing_first_name', '_billing_last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_movider_sms_optin', '_billing_phone', '_billing_first_name', '_billing_last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_movider_sms_optin', '_billing_phone', '_billing_first_name', '_billing_last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_movider_sms_optin', '_billing_phone', '_billing_first_name', '_billing_last_name');

