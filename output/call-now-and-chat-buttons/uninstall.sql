-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CNACB_phone_number', 'CNACB_call_color', 'CNACB_chat_color', 'CNACB_whatsapp_enabled', 'CNACB_call_text', 'CNACB_chat_number', 'CNACB_widget_size', 'CNACB_whatsapp_qr_code_enabled', 'CNACB_widget_position');

