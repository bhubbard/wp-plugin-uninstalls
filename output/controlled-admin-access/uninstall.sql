-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('caa_user_expiring', 'caa_account', 'caa_created', 'caa_deactivated', 'caa_hide_admin_bar', 'caa_main_menu', 'caa_sub_menu');
DELETE FROM wp_usermeta WHERE meta_key IN ('caa_user_expiring', 'caa_account', 'caa_created', 'caa_deactivated', 'caa_hide_admin_bar', 'caa_main_menu', 'caa_sub_menu');
DELETE FROM wp_termmeta WHERE meta_key IN ('caa_user_expiring', 'caa_account', 'caa_created', 'caa_deactivated', 'caa_hide_admin_bar', 'caa_main_menu', 'caa_sub_menu');
DELETE FROM wp_commentmeta WHERE meta_key IN ('caa_user_expiring', 'caa_account', 'caa_created', 'caa_deactivated', 'caa_hide_admin_bar', 'caa_main_menu', 'caa_sub_menu');

