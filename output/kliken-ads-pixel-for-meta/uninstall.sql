-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'kk_fb_wc_settings', 'woocommerce_kk_fb_wc_integration_settings', 'kk_fb_wc_welcome_message_dismissed', 'kk_fb_wc_bootstrap_message_dismissed', 'kk_fb_wc_activation_redirect', 'kk_fb_wc_welcome_message', 'kk_fb_wc_bootstrap_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'billing_phone');

