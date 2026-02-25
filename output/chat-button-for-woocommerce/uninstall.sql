-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcbs_whatsapp_number', 'wcbs_message', 'wcbs_whatsapp_button_class', 'wcbs_button_text');

