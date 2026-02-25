-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_mixpay_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('MixPay payment complete');
DELETE FROM wp_usermeta WHERE meta_key IN ('MixPay payment complete');
DELETE FROM wp_termmeta WHERE meta_key IN ('MixPay payment complete');
DELETE FROM wp_commentmeta WHERE meta_key IN ('MixPay payment complete');

