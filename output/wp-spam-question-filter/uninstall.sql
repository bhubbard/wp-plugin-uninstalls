-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_spam_question_filter_db_version', 'wp_spam_question_filter_enable', 'wp_spam_question_filter_questions', 'wp_spam_question_filter_answers', 'wp_spam_question_filter_registration', 'wp_spam_question_filter_prefix', 'wp_spam_question_filter_question');

