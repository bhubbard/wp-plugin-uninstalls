-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mfat_theme_options', 'mfat_login_options', 'mfat_settings_options', 'mfat_welcome_screen_activation_redirect');

