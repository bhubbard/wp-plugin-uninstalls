-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bdt_biggopti_dismissals', 'bdtsaa_active_modules', 'bdtsaa_security_logs', 'bdtsaa_settings', 'bdtsaa_version', 'bdtsaa_welcome_screen_activation_redirect', 'bdtsaa_pro_features_reset', 'bdtsaa_pro_deactivated', 'bdtsaa_premium_active');
DELETE FROM wp_options WHERE option_name LIKE 'bdtsaa_login_attempts_%';
DELETE FROM wp_options WHERE option_name LIKE 'bdtsaa_captcha_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('admin_notes', '_bdtsaa_external_url', '_bdtsaa_external_url_new_tab', '_bdtsaa_menu_item_new_tab');
DELETE FROM wp_usermeta WHERE meta_key IN ('admin_notes', '_bdtsaa_external_url', '_bdtsaa_external_url_new_tab', '_bdtsaa_menu_item_new_tab');
DELETE FROM wp_termmeta WHERE meta_key IN ('admin_notes', '_bdtsaa_external_url', '_bdtsaa_external_url_new_tab', '_bdtsaa_menu_item_new_tab');
DELETE FROM wp_commentmeta WHERE meta_key IN ('admin_notes', '_bdtsaa_external_url', '_bdtsaa_external_url_new_tab', '_bdtsaa_menu_item_new_tab');

