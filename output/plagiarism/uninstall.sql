-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plagiarism_editor_required');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('plagiarism_result', 'plagiarism_duplicate');
DELETE FROM wp_usermeta WHERE meta_key IN ('plagiarism_result', 'plagiarism_duplicate');
DELETE FROM wp_termmeta WHERE meta_key IN ('plagiarism_result', 'plagiarism_duplicate');
DELETE FROM wp_commentmeta WHERE meta_key IN ('plagiarism_result', 'plagiarism_duplicate');

