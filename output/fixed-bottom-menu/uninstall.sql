-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fixedbottommenu_settings', 'fixedbottommenu_settings_col', 'fixedbottommenu_template', 'fixedbottommenu_add_on_icon_settings', 'fixedbottommenu_settings_old');

