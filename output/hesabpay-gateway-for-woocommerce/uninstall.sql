-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_hesabpay_settings', 'hesabpay_transaction_logs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hesabpay_payout_processed', 'hesabpay_account', '_wcv_hesabpay_account');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hesabpay_payout_processed', 'hesabpay_account', '_wcv_hesabpay_account');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hesabpay_payout_processed', 'hesabpay_account', '_wcv_hesabpay_account');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hesabpay_payout_processed', 'hesabpay_account', '_wcv_hesabpay_account');

