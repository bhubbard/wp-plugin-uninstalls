-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fenotices_display_location', 'fenotices_notice_dismissable', 'fenotices_show_users', 'fenotices_user_roles', 'fenotices_post_types', 'fenotices_mobile_only');
DELETE FROM wp_usermeta WHERE meta_key IN ('fenotices_display_location', 'fenotices_notice_dismissable', 'fenotices_show_users', 'fenotices_user_roles', 'fenotices_post_types', 'fenotices_mobile_only');
DELETE FROM wp_termmeta WHERE meta_key IN ('fenotices_display_location', 'fenotices_notice_dismissable', 'fenotices_show_users', 'fenotices_user_roles', 'fenotices_post_types', 'fenotices_mobile_only');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fenotices_display_location', 'fenotices_notice_dismissable', 'fenotices_show_users', 'fenotices_user_roles', 'fenotices_post_types', 'fenotices_mobile_only');

