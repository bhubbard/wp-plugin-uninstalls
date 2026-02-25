-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rm_review_message_trigger', 'rmp_global_setting_options', 'responsive_menu_version', 'rmp_migrate10111', 'rmp_migrate10112', 'responsive_menu_pro_license_key', 'rmp_dynamic_file_version', 'og-admin-notice-activation-pro', 'og-admin-notice-activation', 'rmp_theme_api_response');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rmp_menu_meta', 'rmp_lagecy_menu_line_space', 'rmp_upgrade_pro_admin_notice', '_wp_attachment_image_alt', '_hide_login_rmp_setting', '_hide_nonlogin_rmp_setting', 'rm_next_update_notice_close');
DELETE FROM wp_usermeta WHERE meta_key IN ('rmp_menu_meta', 'rmp_lagecy_menu_line_space', 'rmp_upgrade_pro_admin_notice', '_wp_attachment_image_alt', '_hide_login_rmp_setting', '_hide_nonlogin_rmp_setting', 'rm_next_update_notice_close');
DELETE FROM wp_termmeta WHERE meta_key IN ('rmp_menu_meta', 'rmp_lagecy_menu_line_space', 'rmp_upgrade_pro_admin_notice', '_wp_attachment_image_alt', '_hide_login_rmp_setting', '_hide_nonlogin_rmp_setting', 'rm_next_update_notice_close');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rmp_menu_meta', 'rmp_lagecy_menu_line_space', 'rmp_upgrade_pro_admin_notice', '_wp_attachment_image_alt', '_hide_login_rmp_setting', '_hide_nonlogin_rmp_setting', 'rm_next_update_notice_close');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_rmp_mega_menu_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_rmp_mega_menu_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_rmp_mega_menu_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_rmp_mega_menu_%';

