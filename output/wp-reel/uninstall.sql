-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_reel_setting_replace_gallery', 'wp_reel_setting_default_speed');

