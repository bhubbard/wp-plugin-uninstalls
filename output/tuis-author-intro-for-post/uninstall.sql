-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tui_aifp_div', 'tui_aifp_message', 'tui_aifp_placemessagebefore', 'tui_aifp_hasphp', 'tui_aifp_addcss');

