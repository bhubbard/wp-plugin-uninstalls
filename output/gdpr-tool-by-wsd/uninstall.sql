-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('users_erase_status_report', 'users_report_status', 'member_status', 'user_un_subscribe_reqst', 'users_member_status', 'wp_admin_menu_media', 'wp_admin_menu_themes', 'wp_admin_menu_plugin', 'parent_user_role', 'cr_custom_registration_shortcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('users_erase_status_report', 'users_report_status', 'member_status', 'user_un_subscribe_reqst', 'users_member_status', 'wp_admin_menu_media', 'wp_admin_menu_themes', 'wp_admin_menu_plugin', 'parent_user_role', 'cr_custom_registration_shortcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('users_erase_status_report', 'users_report_status', 'member_status', 'user_un_subscribe_reqst', 'users_member_status', 'wp_admin_menu_media', 'wp_admin_menu_themes', 'wp_admin_menu_plugin', 'parent_user_role', 'cr_custom_registration_shortcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('users_erase_status_report', 'users_report_status', 'member_status', 'user_un_subscribe_reqst', 'users_member_status', 'wp_admin_menu_media', 'wp_admin_menu_themes', 'wp_admin_menu_plugin', 'parent_user_role', 'cr_custom_registration_shortcode');

