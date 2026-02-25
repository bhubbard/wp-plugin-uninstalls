-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_shield_enabled', 'wp_shield_username', 'wp_shield_password');

