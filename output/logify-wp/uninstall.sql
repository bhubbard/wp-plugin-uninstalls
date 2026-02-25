-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('logify_wp_object_subtypes_set', 'logify_wp_enable_notes', 'logify_wp_db_version', 'logify_wp_delete_on_uninstall', 'logify_wp_roles_to_track', 'logify_wp_roles_with_access', 'logify_wp_users_with_access', 'logify_wp_show_in_admin_bar', 'logify_wp_keep_period_quantity', 'logify_wp_keep_period_units', 'logify_wp_keep_period_errors', 'logify_wp_php_error_types', 'logify_wp_comment_tracking', 'logify_wp_capture_start_time', 'logify_wp_plugin_versions', 'logify_wp_theme_versions', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_trash_meta_comments_status', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_trash_meta_comments_status', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_trash_meta_comments_status', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_trash_meta_comments_status', '_wp_attachment_image_alt');

