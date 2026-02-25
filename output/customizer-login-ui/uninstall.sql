-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cluiwp_color1', 'cluiwp_color2', 'cluiwp_logo', 'cluiwp_background', 'cluiwp_brightness', 'cluiwp_activation_redirect');

