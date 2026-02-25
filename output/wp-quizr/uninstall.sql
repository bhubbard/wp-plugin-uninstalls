-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_quizr_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_quizr_number_of_outcomes', 'wp_quizr_number_of_questions', 'number_of_outcomes_titles_input', 'number_of_question_titles_input');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_quizr_number_of_outcomes', 'wp_quizr_number_of_questions', 'number_of_outcomes_titles_input', 'number_of_question_titles_input');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_quizr_number_of_outcomes', 'wp_quizr_number_of_questions', 'number_of_outcomes_titles_input', 'number_of_question_titles_input');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_quizr_number_of_outcomes', 'wp_quizr_number_of_questions', 'number_of_outcomes_titles_input', 'number_of_question_titles_input');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wp_quizr_outcomes_title_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wp_quizr_outcomes_title_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wp_quizr_outcomes_title_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wp_quizr_outcomes_title_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wp_quizr_question_title_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wp_quizr_question_title_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wp_quizr_question_title_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wp_quizr_question_title_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_text';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_text';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_text';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_text';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_image_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_image_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_image_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_image_url';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_image_caption';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_image_caption';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_image_caption';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_image_caption';

