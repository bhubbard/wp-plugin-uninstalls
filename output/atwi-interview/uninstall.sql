-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qa_index_text_color', 'qa_index_bold', 'question_text_color', 'question_bold', 'question_justify', 'answer_text_color', 'answer_bold', 'answer_justify');

