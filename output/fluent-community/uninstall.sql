-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_bp_fcom_group_maps', '_bp_fcom_last_post_id', '_bp_fcom_last_user_id', '_bp_fcom_last_migrated_member_id', '_fcom_bp_migrations_status', 'fluentmail-settings', 'fluent_community_db_version', 'fluent_community_settings', 'rewrite_rules', '_fcom_crm_tagging', 'siteUrl', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('locale', '_wp_attachment_metadata', 'bp_favorite_activities', '_fcom_deactivated_at', '_fcom_space_ids', '_fcom_user_photo', '_fcom_is_verified', 'description', '_fluent_cover_photo', '_fcom_last_digest_sent', '_new_email', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('locale', '_wp_attachment_metadata', 'bp_favorite_activities', '_fcom_deactivated_at', '_fcom_space_ids', '_fcom_user_photo', '_fcom_is_verified', 'description', '_fluent_cover_photo', '_fcom_last_digest_sent', '_new_email', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('locale', '_wp_attachment_metadata', 'bp_favorite_activities', '_fcom_deactivated_at', '_fcom_space_ids', '_fcom_user_photo', '_fcom_is_verified', 'description', '_fluent_cover_photo', '_fcom_last_digest_sent', '_new_email', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('locale', '_wp_attachment_metadata', 'bp_favorite_activities', '_fcom_deactivated_at', '_fcom_space_ids', '_fcom_user_photo', '_fcom_is_verified', 'description', '_fluent_cover_photo', '_fcom_last_digest_sent', '_new_email', '_wp_attachment_image_alt');

