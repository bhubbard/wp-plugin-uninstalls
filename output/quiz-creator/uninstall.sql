-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quizCreator_collect_emails', 'quizCreator_show_result_on_page', 'quizCreator_show_subscribe_option', 'quizCreator_text_settings', 'quizCreator_email_override', 'quizCreator_custom_email', 'quizCreator_version');

