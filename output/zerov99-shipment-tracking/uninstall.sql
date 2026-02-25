-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_email_header_image', 'woocommerce_email_base_color', 'woocommerce_email_body_background_color', 'woocommerce_email_text_color', 'woocommerce_email_footer_text', 'woocommerce_email_footer_text_color', 'zerov99_shipping_providers');

