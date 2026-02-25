-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mind_settings', '_mind_welcome_screen_activation_redirect');

