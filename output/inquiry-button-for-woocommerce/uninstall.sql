-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inqubufo_whatsapp_enable', 'inqubufo_whatsapp_number', 'inqubufo_whatsapp_message', 'inqubufo_whatsapp_button_text');

