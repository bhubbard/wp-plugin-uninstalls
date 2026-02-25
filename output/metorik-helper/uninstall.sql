-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('metorik_importing_currently', 'woocommerce_registration_generate_username', 'woocommerce_registration_generate_password', 'metorik_cart_settings', 'metorik_checkout_url', 'metorik_show_activation_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_metorik_cart_token', '_metorik_customer_email_opt_out', '_metorik_pending_recovery', '_metorik_engage', '_metorik_source_type', '_metorik_referer');
DELETE FROM wp_usermeta WHERE meta_key IN ('_metorik_cart_token', '_metorik_customer_email_opt_out', '_metorik_pending_recovery', '_metorik_engage', '_metorik_source_type', '_metorik_referer');
DELETE FROM wp_termmeta WHERE meta_key IN ('_metorik_cart_token', '_metorik_customer_email_opt_out', '_metorik_pending_recovery', '_metorik_engage', '_metorik_source_type', '_metorik_referer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_metorik_cart_token', '_metorik_customer_email_opt_out', '_metorik_pending_recovery', '_metorik_engage', '_metorik_source_type', '_metorik_referer');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_metorik_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_metorik_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_metorik_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_metorik_%';

