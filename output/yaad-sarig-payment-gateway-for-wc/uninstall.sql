-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_version', 'woocommerce_calc_taxes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yaad_postpone', '_yaadpay_id', '_yaadpay_amount', 'yaad_credit_card_payment', 'HKId', 'Payment Gateway', '_yaadpay_token', '_yaadpay_tokef_month', '_yaadpay_tokef_year');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yaad_postpone', '_yaadpay_id', '_yaadpay_amount', 'yaad_credit_card_payment', 'HKId', 'Payment Gateway', '_yaadpay_token', '_yaadpay_tokef_month', '_yaadpay_tokef_year');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yaad_postpone', '_yaadpay_id', '_yaadpay_amount', 'yaad_credit_card_payment', 'HKId', 'Payment Gateway', '_yaadpay_token', '_yaadpay_tokef_month', '_yaadpay_tokef_year');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yaad_postpone', '_yaadpay_id', '_yaadpay_amount', 'yaad_credit_card_payment', 'HKId', 'Payment Gateway', '_yaadpay_token', '_yaadpay_tokef_month', '_yaadpay_tokef_year');

