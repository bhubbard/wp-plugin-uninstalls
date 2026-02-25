-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xdwhatsapp_number', 'xdwhatsapp_button_text', 'xdwhatsapp_button_visibility');

