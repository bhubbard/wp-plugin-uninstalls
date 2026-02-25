-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfwp_stripe_secret_key', 'cfwp_stripe_webhook_secret', 'cfwp_plan_name', 'cfwp_redirect_not_logged_in', 'cfwp_redirect_not_subscribed', 'cfwp_redirect_expired', 'cfwp_plan_price', 'cfwp_success_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cfwp_dismiss_missing_woocommerce', 'cfwp_dismiss_missing_smtp', 'subscription_status', 'stripe_subscription_id', 'stripe_customer_id', '_cfwp_restricted');
DELETE FROM wp_usermeta WHERE meta_key IN ('cfwp_dismiss_missing_woocommerce', 'cfwp_dismiss_missing_smtp', 'subscription_status', 'stripe_subscription_id', 'stripe_customer_id', '_cfwp_restricted');
DELETE FROM wp_termmeta WHERE meta_key IN ('cfwp_dismiss_missing_woocommerce', 'cfwp_dismiss_missing_smtp', 'subscription_status', 'stripe_subscription_id', 'stripe_customer_id', '_cfwp_restricted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cfwp_dismiss_missing_woocommerce', 'cfwp_dismiss_missing_smtp', 'subscription_status', 'stripe_subscription_id', 'stripe_customer_id', '_cfwp_restricted');

