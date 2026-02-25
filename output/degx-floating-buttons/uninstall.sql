-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('degxfb_tooltip_color', 'degxfb_whatsapp_number', 'degxfb_phone_number', 'degxfb_button_position', 'degxfb_button_size', 'degxfb_whatsapp_color', 'degxfb_phone_color', 'degxfb_whatsapp_tooltip', 'degxfb_phone_tooltip');

