-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lpcode_button_numero', 'lpcode_button_mensagem', 'lpcode_button_icon', 'lpcode_button_animate', 'lpcode_button_local', 'lpcode_button_size', 'lpcode_button_bottom', 'lpcode_button_distance');

