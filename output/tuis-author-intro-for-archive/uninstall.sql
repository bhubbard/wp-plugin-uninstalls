-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tui_aifa_div', 'tui_aifa_message', 'tui_aifa_placemessagebefore', 'tui_aifa_hasphp', 'tui_aifa_addcss');

