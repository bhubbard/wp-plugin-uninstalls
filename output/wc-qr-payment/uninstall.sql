-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_qr_pay_allow', 'woo_qr_pay_iban', 'woo_qr_pay_account_owner', 'woo_qr_pay_compatibility_mode', 'woo_qr_pay_add_to_email', 'woo_qr_pay_custom_description_email_visibility', 'woocommerce_bacs_settings', 'woo_qr_pay_custom_description', 'wc_qr_payment_migrated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_qr_payment_code_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_qr_payment_code_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_qr_payment_code_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_qr_payment_code_url');

