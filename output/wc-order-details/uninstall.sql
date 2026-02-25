-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcod_styles_scripts', 'wcod_restrict', 'wcod_display', 'wcod_theme_scripts');

