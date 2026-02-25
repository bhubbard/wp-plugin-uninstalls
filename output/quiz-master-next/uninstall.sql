-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qmn_failed_alter_table_queries', 'qsm_check_database_structure', 'qmn-settings', 'qsm_multiple_category_enabled', 'qmn_original_version', 'qsm_update_db_column', 'qsm_update_result_db_column', 'qsm_update_quiz_db_column', 'qsm_update_result_db_column_datatype', 'qsm_add_new_column_question_table_table', 'qsm_update_result_db_column_page_url', 'qsm_update_result_db_column_page_name', 'qsm_update_db_column_charset_utf8mb4_unicode_ci', 'qsm_change_the_post_type', 'qsm_upated_question_type_val', 'qsm_addon_advanced_timer_settings', 'qsm-quiz-settings', 'mlw_advert_shows', 'qmn_quiz_taken_cnt', 'admin_email ', 'active_sitewide_plugins', 'qmn_review_message_trigger', 'mlw_quiz_master_version', 'fixed_duplicate_questions', 'fix_deleted_quiz_posts', 'qmn_tracker_last_time', 'qmn-tracking-notice', 'qmn_contributors', 'qsm_admin_dashboard_data', 'qsm_ads_data');
DELETE FROM wp_options WHERE option_name LIKE 'logic_rules_quiz_%';
DELETE FROM wp_options WHERE option_name LIKE 'quiz_featured_image_%';
DELETE FROM wp_options WHERE option_name LIKE 'qsm_already_sent_emails_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('quiz_id', 'results_screen_option', 'qsm_show_disabled_contact_fields', 'rich_editing', 'nonce_validation_notification', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('quiz_id', 'results_screen_option', 'qsm_show_disabled_contact_fields', 'rich_editing', 'nonce_validation_notification', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('quiz_id', 'results_screen_option', 'qsm_show_disabled_contact_fields', 'rich_editing', 'nonce_validation_notification', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('quiz_id', 'results_screen_option', 'qsm_show_disabled_contact_fields', 'rich_editing', 'nonce_validation_notification', 'first_name', 'last_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_qmn_log_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_qmn_log_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_qmn_log_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qmn_log_%';

