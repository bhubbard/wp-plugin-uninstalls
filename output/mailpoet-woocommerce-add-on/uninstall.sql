-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailpoet_woocommerce_subscribe_too', 'mailpoet_woocommerce_addon_version', 'mailpoet_woocommerce_enable_checkout', 'mailpoet_woocommerce_customer_selects', 'mailpoet_woocommerce_checkbox_status', 'mailpoet_woocommerce_checkout_label', 'mailpoet_woocommerce_double_optin', 'mailpoet_woocommerce_subscription_position', 'mailpoet_woocommerce_uninstall_data', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mailpoet_wc_subscribed_to_newsletter');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mailpoet_wc_subscribed_to_newsletter');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mailpoet_wc_subscribed_to_newsletter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mailpoet_wc_subscribed_to_newsletter');

