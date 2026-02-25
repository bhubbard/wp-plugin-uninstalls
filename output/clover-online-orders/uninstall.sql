-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moo_settings', 'moo_apple_pay_enabled', 'moo_old_checkout_enabled', 'moo_merchant_pubkey', 'moo_pakms_key', 'moo_slug', 'moo_merchant_uuid', 'moo_onlineOrders_version', 'soo_ssl_verify', 'sooDisableGoogleReCAPTCHA', 'moo_next_order_number', 'moo-show-allItems', 'moo_new_checkout_enabled', 'moo_blackout', 'soo_error_saving_settings');

