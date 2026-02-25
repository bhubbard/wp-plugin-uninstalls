-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('northstar_activate', 'northstar_message', 'northstar_text_color', 'northstar_bg_color');

