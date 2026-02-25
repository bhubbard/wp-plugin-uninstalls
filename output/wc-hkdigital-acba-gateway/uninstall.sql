-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hkd_acba_version_option', 'language_payment_acba_bank', 'hkd_acba_credit_agricole_checkout_id', 'hkd_check_activation_acba', 'woocommerce_checkout_page_id', 'hkdump');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('PaymentID', 'isBindingOrder', 'bindingInfo', 'FailedMessageACBA');
DELETE FROM wp_usermeta WHERE meta_key IN ('PaymentID', 'isBindingOrder', 'bindingInfo', 'FailedMessageACBA');
DELETE FROM wp_termmeta WHERE meta_key IN ('PaymentID', 'isBindingOrder', 'bindingInfo', 'FailedMessageACBA');
DELETE FROM wp_commentmeta WHERE meta_key IN ('PaymentID', 'isBindingOrder', 'bindingInfo', 'FailedMessageACBA');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'recurringChargeACBA%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'recurringChargeACBA%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'recurringChargeACBA%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'recurringChargeACBA%';

