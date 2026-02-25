-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_pay_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vendor_payment_mode', '_vendor_razorpay_account_id', '_commission_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vendor_payment_mode', '_vendor_razorpay_account_id', '_commission_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vendor_payment_mode', '_vendor_razorpay_account_id', '_commission_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vendor_payment_mode', '_vendor_razorpay_account_id', '_commission_id');

