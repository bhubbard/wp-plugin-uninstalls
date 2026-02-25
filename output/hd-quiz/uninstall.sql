-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hdq_settings', 'HDQ_PLUGIN_VERSION', 'HDQ_UPDATED', 'hdq_new_addon', 'hdq_new_addon');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hdq_quiz_type', 'hdq_author_id', 'hdq_question_data', 'question_data', 'quiz_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('hdq_quiz_type', 'hdq_author_id', 'hdq_question_data', 'question_data', 'quiz_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('hdq_quiz_type', 'hdq_author_id', 'hdq_question_data', 'question_data', 'quiz_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hdq_quiz_type', 'hdq_author_id', 'hdq_question_data', 'question_data', 'quiz_data');

