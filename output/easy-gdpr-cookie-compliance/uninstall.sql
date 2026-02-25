-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('NEW_EasyGDPR_text', 'NEW_EasyGDPR_button_text');

