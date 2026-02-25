-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yvk_login_styler_settings', 'yvk_login_styler_installDate');

