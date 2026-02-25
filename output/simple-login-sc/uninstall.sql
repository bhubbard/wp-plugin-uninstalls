-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slsc_logouttext', 'slsc_username', 'slsc_password', 'slsc_button_text', 'slsc_welcome_text');

