-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ecwo-save-template', 'ecwo-templates-settings', 'ecwo_meta', 'ecwo_do_activation_redirect', 'woocommerce_email_background_color', 'woocommerce_email_body_background_color', 'woocommerce_email_base_color', 'woocommerce_email_text_color');

