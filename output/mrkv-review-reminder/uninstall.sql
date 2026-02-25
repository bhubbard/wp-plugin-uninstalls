-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mrkv_review_reminder', 'woocommerce_email_from_name', 'woocommerce_email_from_address', 'woocommerce_email_base_color', 'woocommerce_email_background_color', 'woocommerce_email_body_background_color', 'woocommerce_email_text_color', 'woocommerce_email_footer_text_color', 'woocommerce_email_header_image');

