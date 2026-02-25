-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quizu_settings_email_address', 'quizu_settings_email_name', 'quizu_settings_default_color', 'quizu_settings_autosave_flag', 'quizu_settings_autosave_quiz_flag', 'quizu_settings_defaults_stored', 'quizu_settings_permissions', 'quizu_settings_user_login_flag', 'quizu_settings_texts_overlap', 'quizu_settings_texts_integer', 'quizu_settings_texts_reset', 'quizu_settings_texts_next', 'quizu_settings_texts_essay_error', 'quizu_settings_texts_checked_error', 'quizu_settings_texts_error', 'quizu_settings_texts_share', 'quizu_settings_texts_email', 'quizu_settings_texts_send', 'quizu_settings_email_message', 'quizu_settings_email_subject', 'quizu_settings_texts_post_email', 'quizu_settings_texts_email_error', 'quizu_settings_texts_total_score', 'quizu_settings_social_sharing_flag');
DELETE FROM wp_options WHERE option_name LIKE 'quizu_settings_texts_%';
DELETE FROM wp_options WHERE option_name LIKE 'quizu_settings_email_%';
DELETE FROM wp_options WHERE option_name LIKE 'quizu_settings_permanent_%';
DELETE FROM wp_options WHERE option_name LIKE 'quizu_settings_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_quizu_user_login_flag', '_quizu_show_scores_flag', '_quizu_result_criteria_flag', '_quizu_questions', '_quizu_results', '_quizu_linked_quiz');
DELETE FROM wp_usermeta WHERE meta_key IN ('_quizu_user_login_flag', '_quizu_show_scores_flag', '_quizu_result_criteria_flag', '_quizu_questions', '_quizu_results', '_quizu_linked_quiz');
DELETE FROM wp_termmeta WHERE meta_key IN ('_quizu_user_login_flag', '_quizu_show_scores_flag', '_quizu_result_criteria_flag', '_quizu_questions', '_quizu_results', '_quizu_linked_quiz');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_quizu_user_login_flag', '_quizu_show_scores_flag', '_quizu_result_criteria_flag', '_quizu_questions', '_quizu_results', '_quizu_linked_quiz');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_quizu_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_quizu_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_quizu_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_quizu_%';

