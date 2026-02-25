-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vibe_course_qna_tag', '_dwqa_votes', 'vibe_question_unit');
DELETE FROM wp_usermeta WHERE meta_key IN ('vibe_course_qna_tag', '_dwqa_votes', 'vibe_question_unit');
DELETE FROM wp_termmeta WHERE meta_key IN ('vibe_course_qna_tag', '_dwqa_votes', 'vibe_question_unit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vibe_course_qna_tag', '_dwqa_votes', 'vibe_question_unit');

