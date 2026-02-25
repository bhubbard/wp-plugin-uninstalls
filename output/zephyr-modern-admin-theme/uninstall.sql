-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zephyr_admin_theme_settings', 'zat_custom_themes');

