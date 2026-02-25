-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('selected_plan_view', 'one_time_purchase_title', 'subscription_button_text', 'rorder_license', 'rorder_email', 'rorder_license_key', 'subscription_products', 'rorder_one_time_purchase_title', 'rorder_subscription_product_title', 'rorder_subscribe_button_text', 'rorder_selected_plan_view', 'rorder_subscription_retry_count', 'rorder_subscription_retry_interval', 'rorder_subscription_retry_interval_unit', 'reordere_subscriptions_meta_version', 'woocommerce_razorpay_settings', 'woocommerce-ppcp-settings', 'woocommerce_stripe_settings');
DELETE FROM wp_options WHERE option_name LIKE 'reordere_razorpay_plan_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_enable_subscription', '_subscription_discount_type', '_main_subscription_title', '_subscription_product_row', '_subscription_fields', '_subscription_title', '_subscription_plans', '_razorpay_customer_id', '_razorpay_token_id', '_razorpay_payment_method_saved', '_ppcp_target_customer_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_enable_subscription', '_subscription_discount_type', '_main_subscription_title', '_subscription_product_row', '_subscription_fields', '_subscription_title', '_subscription_plans', '_razorpay_customer_id', '_razorpay_token_id', '_razorpay_payment_method_saved', '_ppcp_target_customer_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_enable_subscription', '_subscription_discount_type', '_main_subscription_title', '_subscription_product_row', '_subscription_fields', '_subscription_title', '_subscription_plans', '_razorpay_customer_id', '_razorpay_token_id', '_razorpay_payment_method_saved', '_ppcp_target_customer_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_enable_subscription', '_subscription_discount_type', '_main_subscription_title', '_subscription_product_row', '_subscription_fields', '_subscription_title', '_subscription_plans', '_razorpay_customer_id', '_razorpay_token_id', '_razorpay_payment_method_saved', '_ppcp_target_customer_id');

