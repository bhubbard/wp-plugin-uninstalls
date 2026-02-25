-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zenc_academy_events', 'zenc_email_settings', 'zenc_learnpress_events', 'zenc_learndash_events', 'zenc_lifterlms_events', 'zenc_masterstudy_events', 'zenc_tutorlms_events', 'zencommunity_first_install_time', 'zenc_active_addons', 'zencommunity_version', 'zencommunity_db_version', 'zenc_is_pefixed', 'theme_switched_via_customizer', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_is_updating_license';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('academy_course_curriculum', '_llms_lesson_id', '_llms_parent_course', 'first_name', 'last_name', 'zenc_theme_mode', 'zenc_user_role', 'zenc_user_role_disabled_caps');
DELETE FROM wp_usermeta WHERE meta_key IN ('academy_course_curriculum', '_llms_lesson_id', '_llms_parent_course', 'first_name', 'last_name', 'zenc_theme_mode', 'zenc_user_role', 'zenc_user_role_disabled_caps');
DELETE FROM wp_termmeta WHERE meta_key IN ('academy_course_curriculum', '_llms_lesson_id', '_llms_parent_course', 'first_name', 'last_name', 'zenc_theme_mode', 'zenc_user_role', 'zenc_user_role_disabled_caps');
DELETE FROM wp_commentmeta WHERE meta_key IN ('academy_course_curriculum', '_llms_lesson_id', '_llms_parent_course', 'first_name', 'last_name', 'zenc_theme_mode', 'zenc_user_role', 'zenc_user_role_disabled_caps');

