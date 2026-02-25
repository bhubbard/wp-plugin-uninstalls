-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('language_payment_araratbank', 'rewrite_rules', 'hkd_araratbank_version_option', 'hkd_araratbank_checkout_id', 'hkdump', 'woocommerce_checkout_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('FailedMessageArarat', 'PaymentID', 'isBindingOrder', 'bindingInfo_araratbank');
DELETE FROM wp_usermeta WHERE meta_key IN ('FailedMessageArarat', 'PaymentID', 'isBindingOrder', 'bindingInfo_araratbank');
DELETE FROM wp_termmeta WHERE meta_key IN ('FailedMessageArarat', 'PaymentID', 'isBindingOrder', 'bindingInfo_araratbank');
DELETE FROM wp_commentmeta WHERE meta_key IN ('FailedMessageArarat', 'PaymentID', 'isBindingOrder', 'bindingInfo_araratbank');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'recurringChargeARARAT%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'recurringChargeARARAT%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'recurringChargeARARAT%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'recurringChargeARARAT%';

