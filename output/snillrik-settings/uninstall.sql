-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('snillrik_settings_admintoolbar', 'snillrik_settings_admintoolbar_role', 'snillrik_settings_turnoffemail', 'snillrik_settings_turnoffemail_email', 'snillrik_settings_categorycolor', 'snillrik_settings_changeemail', 'snillrik_settings_change_name', 'snillrik_settings_change_email', 'wp_mail_from', 'snillrik_settings_redirectlogin', 'snillrik_settings_redirectlogout', 'snillrik_settings_redirectprofile', 'snillrik_settings_redirectlogin_page', 'snillrik_settings_redirectlogout_page', 'snillrik_settings_redirectprofile_page', 'snillrik-settings-select-eagerness', 'snillrik-settings-select-mode', 'snillrik_settings_wootocheckout', 'snillrik_settings_simplehoneypot', 'snillrik_settings_simplehoneypot_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('category_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('category_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('category_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('category_color');

