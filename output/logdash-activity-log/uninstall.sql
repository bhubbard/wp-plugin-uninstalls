-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('logdash_deleted_events', 'logdash_options', 'classic-editor-replace', 'classic-editor-allow-users');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sfwd-quizzes', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sfwd-quizzes', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sfwd-quizzes', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sfwd-quizzes', '_wp_page_template');

