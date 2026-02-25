-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_razorpay_subscriptions_settings', 'webhook_secret', 'rzp_webhook_secret', 'rzp_subscription_webhook_enable_flag');

