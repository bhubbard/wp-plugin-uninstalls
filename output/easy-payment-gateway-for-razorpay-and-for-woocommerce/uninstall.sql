-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pgrpw_activation_time', 'pgrpw_review_notice_hide_v1', 'pgrpw_next_show_time', 'easy_razorpay_for_woocommerce_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_razorpay_order_id', '_razorpay_payment_id', '_razorpay_payment_verified');
DELETE FROM wp_usermeta WHERE meta_key IN ('_razorpay_order_id', '_razorpay_payment_id', '_razorpay_payment_verified');
DELETE FROM wp_termmeta WHERE meta_key IN ('_razorpay_order_id', '_razorpay_payment_id', '_razorpay_payment_verified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_razorpay_order_id', '_razorpay_payment_id', '_razorpay_payment_verified');

