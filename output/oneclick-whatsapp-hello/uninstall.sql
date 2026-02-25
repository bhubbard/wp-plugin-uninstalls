-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wa_hello_whatsapp_number', 'wa_hello_hide_button', 'wa_hello_shortcode_message', 'wa_hello_shortcode_text_button', 'wa_hello_shortcode_target', 'wa_hello_gdpr_status_enable', 'wa_hello_gdpr_message', 'wa_hello_gdpr_privacy_page', 'wa_hello_floating_button', 'wa_hello_floating_button_position', 'wa_hello_floating_message', 'wa_hello_floating_target', 'wa_hello_floating_tooltip_enable', 'wa_hello_floating_tooltip', 'wa_hello_floating_hide_mobile', 'wa_hello_option_phone_number', 'wa_hello_option_message');

