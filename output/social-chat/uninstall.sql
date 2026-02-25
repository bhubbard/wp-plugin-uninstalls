-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sc_facebook', 'sc_whatsapp', 'sc_email', 'sc_call', 'sc_call_to_action', 'sc_button_color', 'sc_position', 'sc_order');

