-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('classic-editor-replace', 'squareoffs_current_comment_status', 'squareoffs_api_categories');
DELETE FROM wp_options WHERE option_name LIKE 'squareoffs_user_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('squareoffs_user_data', 'soMargins');
DELETE FROM wp_usermeta WHERE meta_key IN ('squareoffs_user_data', 'soMargins');
DELETE FROM wp_termmeta WHERE meta_key IN ('squareoffs_user_data', 'soMargins');
DELETE FROM wp_commentmeta WHERE meta_key IN ('squareoffs_user_data', 'soMargins');

