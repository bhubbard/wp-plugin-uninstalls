-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pi_enable_reminder_email_admin', 'pi_dont_send_reminder_if_order_status_is', 'woocommerce_email_footer_text', 'woocommerce_email_header_image', 'woocommerce_email_background_color', 'woocommerce_email_body_background_color', 'woocommerce_email_base_color', 'woocommerce_email_text_color', 'pi_email_reminder_trigger');

