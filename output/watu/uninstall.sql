-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('watu_rated', 'watu_show_answers', 'watu_no_ajax', 'watu_integrate_moolamojo', 'watu_answer_type', 'watuproshare_facebook_appid', 'namaste_use_exams', 'namaste_access_exam_started_lesson', 'watuproshare_linkedin', 'watuproshare_twitter', 'watu_csv_delim', 'watu_csv_quotes', 'watu_admin_email', 'watu_locale_url', 'watu_datepicker_css', 'watu_text_captcha', 'watu_demo_quiz_created', 'watu_delete_db', 'watu_delete_db_confirm', 'watu_use_the_content', 'watu_debug_mode', 'watu_quiz_word', 'watu_quiz_word_plural', 'watu_dont_autoscroll', 'watu_single_page', 'watu_db_tables', 'watu_version', 'watu_admin_notice');

