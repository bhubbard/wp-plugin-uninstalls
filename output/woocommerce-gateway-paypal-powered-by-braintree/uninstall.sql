-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sv_wc_apple_pay_enabled', 'sv_wc_google_pay_enabled', 'woocommerce_paypalbraintree_cards_settings', 'wc_paypal_braintree_merchant_access_token', 'wc_paypal_braintree_environment', 'wc_paypal_braintree_merchant_id', 'woocommerce_braintree_credit_card_settings', 'woocommerce_braintree_paypal_settings', 'wc_braintree_legacy_migrated', 'wc_braintree_auth_access_token', 'wc_braintree_auth_environment', 'wc_braintree_auth_merchant_id', 'active_sitewide_plugins', 'woocommerce_enable_guest_checkout', 'woocommerce_enable_signup_and_login_from_checkout', 'woocommerce_enable_signup_from_checkout_for_subscriptions', 'sv_wc_apple_pay_button_style', 'sv_wc_apple_pay_display_locations', 'woocommerce_tax_based_on', 'woocommerce_default_country', 'sv_wc_apple_pay_cert_path', 'sv_wc_apple_pay_merchant_id', 'woocommerce_calc_shipping', 'sv_wc_plugin_wc_versions');
DELETE FROM wp_options WHERE option_name LIKE 'wc_braintree_level3_not_allowed_%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_is_active';
DELETE FROM wp_options WHERE option_name LIKE '%_milestone_messages';
DELETE FROM wp_options WHERE option_name LIKE '%_milestone_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_country');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_migrated';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_migrated';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_migrated';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_migrated';

