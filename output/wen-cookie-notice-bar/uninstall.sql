-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcnb_enabled', 'wcnb_message', 'wcnb_button_text');

