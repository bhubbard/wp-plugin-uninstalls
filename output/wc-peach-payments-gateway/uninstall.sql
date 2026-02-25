-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_peach-payments_settings', 'woocommerce_currency', 'woocommerce_checkout_order_received_endpoint', 'woocommerce_checkout_pay_endpoint', 'woocommerce_enable_signup_and_login_from_checkout', 'woocommerce_enable_signup_from_checkout_for_subscriptions', 'cleantalk_settings', 'woocommerce_myaccount_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pmpro_peach_customerid', '_peach_subscription_payment_method', '_peach_payment_id', 'wcfmmp_profile_settings', '_payment_method', '_payment_method_title', 'my-cards', 'payment_auth_bearer', 'payment_order_id', 'peach_api_trigger', '_checkout_payment_option', 'payment_initial_id', 'payment_registration_id', '_billing_peach');
DELETE FROM wp_usermeta WHERE meta_key IN ('pmpro_peach_customerid', '_peach_subscription_payment_method', '_peach_payment_id', 'wcfmmp_profile_settings', '_payment_method', '_payment_method_title', 'my-cards', 'payment_auth_bearer', 'payment_order_id', 'peach_api_trigger', '_checkout_payment_option', 'payment_initial_id', 'payment_registration_id', '_billing_peach');
DELETE FROM wp_termmeta WHERE meta_key IN ('pmpro_peach_customerid', '_peach_subscription_payment_method', '_peach_payment_id', 'wcfmmp_profile_settings', '_payment_method', '_payment_method_title', 'my-cards', 'payment_auth_bearer', 'payment_order_id', 'peach_api_trigger', '_checkout_payment_option', 'payment_initial_id', 'payment_registration_id', '_billing_peach');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pmpro_peach_customerid', '_peach_subscription_payment_method', '_peach_payment_id', 'wcfmmp_profile_settings', '_payment_method', '_payment_method_title', 'my-cards', 'payment_auth_bearer', 'payment_order_id', 'peach_api_trigger', '_checkout_payment_option', 'payment_initial_id', 'payment_registration_id', '_billing_peach');

