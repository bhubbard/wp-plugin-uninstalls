-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_user_activity_object_type', 'wp_user_activity_object_subtype', 'wp_user_activity_object_name', 'wp_user_activity_object_id', 'wp_user_activity_action', 'wp_user_activity_ip', 'wp_user_activity_ua');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_user_activity_object_type', 'wp_user_activity_object_subtype', 'wp_user_activity_object_name', 'wp_user_activity_object_id', 'wp_user_activity_action', 'wp_user_activity_ip', 'wp_user_activity_ua');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_user_activity_object_type', 'wp_user_activity_object_subtype', 'wp_user_activity_object_name', 'wp_user_activity_object_id', 'wp_user_activity_action', 'wp_user_activity_ip', 'wp_user_activity_ua');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_user_activity_object_type', 'wp_user_activity_object_subtype', 'wp_user_activity_object_name', 'wp_user_activity_object_id', 'wp_user_activity_action', 'wp_user_activity_ip', 'wp_user_activity_ua');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wp_user_activity_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wp_user_activity_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wp_user_activity_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wp_user_activity_%';

