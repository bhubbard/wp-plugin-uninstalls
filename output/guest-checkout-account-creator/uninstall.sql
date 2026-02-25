-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'gueschac_activated', 'gueschac_activation_notice_dismissed91', 'gueschac_settings', 'woocommerce_email_footer_text', 'gueschac_enabled', 'gueschac_minimum_order', 'gueschac_send_welcome_email', 'gueschac_email_subject', 'gueschac_email_content', 'woocommerce_email_header_image');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gueschac_temp_pass', 'default_billing_address', 'default_shipping_address', '_gueschac_processed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gueschac_temp_pass', 'default_billing_address', 'default_shipping_address', '_gueschac_processed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gueschac_temp_pass', 'default_billing_address', 'default_shipping_address', '_gueschac_processed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gueschac_temp_pass', 'default_billing_address', 'default_shipping_address', '_gueschac_processed');

