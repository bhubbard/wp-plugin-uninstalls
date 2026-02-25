-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('b0xT_admin_country', 'b0xT_zipcode_label', 'b0xT_distance_api', 'b0xT_mode', 'b0xT_payment_info', 'b0xT_thank_you_page', 'b0xT_api_mode', 'b0xT_google_api_key', 'b0xT_username', 'b0xT_password', 'b0xT_admin_debug', 'b0xT_google_validation_bypass', 'b0xT_page_title');

