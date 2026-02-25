-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uncanny_toolkit_active_classes', 'learndash_settings_ld_integrity', '_uncanny_toolkit_review_time', '_uncanny_toolkit_review_reminder', '_uncanny_toolkit_review_reminder_date', 'FrontendLoginPlus', 'LoginRedirect', 'HideAdminBar', 'uncanny_pro_toolkitlearnDashMyCourses', 'uncanny_owl_notices', 'uo_license_status', 'ulgm_license_status', 'uo_reporting_license_status', 'uo_codes_license_status', 'uo_license_key', 'active_sitewide_plugins', 'uncanny_owl_over_time_toolkit-free', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'uncanny_owl_over_time_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('uo_is_verified', 'uo_verified_email_sent', 'learndash_last_known_page', '_sfwd-quizzes', '_nav_menu_role', '_sfwd-quiz', 'session_tokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('uo_is_verified', 'uo_verified_email_sent', 'learndash_last_known_page', '_sfwd-quizzes', '_nav_menu_role', '_sfwd-quiz', 'session_tokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('uo_is_verified', 'uo_verified_email_sent', 'learndash_last_known_page', '_sfwd-quizzes', '_nav_menu_role', '_sfwd-quiz', 'session_tokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('uo_is_verified', 'uo_verified_email_sent', 'learndash_last_known_page', '_sfwd-quizzes', '_nav_menu_role', '_sfwd-quiz', 'session_tokens');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'learndash_last_known_course_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'learndash_last_known_course_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'learndash_last_known_course_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'learndash_last_known_course_%';

