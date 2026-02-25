-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grader_grade_color', 'grader_comment_color', 'grader_warning_msg', 'grader_hidden_comment_text', 'grader_comment_delim', 'grader_grade_token', 'grader_allow_edits');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_grade_comment');
DELETE FROM wp_usermeta WHERE meta_key IN ('_grade_comment');
DELETE FROM wp_termmeta WHERE meta_key IN ('_grade_comment');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_grade_comment');

