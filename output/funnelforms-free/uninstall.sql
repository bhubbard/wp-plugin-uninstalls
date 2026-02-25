-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('af2_free_version', 'af2_dark_mode', 'af2_categories', 'checklist_question', 'checklist_contactform', 'checklist_form', 'checklist_shortcode', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'klicktipp_user', 'klicktipp_pw', 'af2_custom_system_no_nl2br', 'af2_version_num_', 'af2_version', 'af2_question_categories', 'af2_verification_codes', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

