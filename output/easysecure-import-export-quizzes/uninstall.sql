-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sfwd-quiz', 'quiz_pro_id', 'question_pro_id', 'question_type', 'quiz_id', 'ld_quiz_questions', 'quiz_data', 'quiz_pro', '_sfwd-question-type', '_sfwd-question-answer');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sfwd-quiz', 'quiz_pro_id', 'question_pro_id', 'question_type', 'quiz_id', 'ld_quiz_questions', 'quiz_data', 'quiz_pro', '_sfwd-question-type', '_sfwd-question-answer');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sfwd-quiz', 'quiz_pro_id', 'question_pro_id', 'question_type', 'quiz_id', 'ld_quiz_questions', 'quiz_data', 'quiz_pro', '_sfwd-question-type', '_sfwd-question-answer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sfwd-quiz', 'quiz_pro_id', 'question_pro_id', 'question_type', 'quiz_id', 'ld_quiz_questions', 'quiz_data', 'quiz_pro', '_sfwd-question-type', '_sfwd-question-answer');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'quiz_pro_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'quiz_pro_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'quiz_pro_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'quiz_pro_id_%';

