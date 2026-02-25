-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bnfw_suppress_spam', 'classic-editor-replace', 'bnfw_email_format', 'bnfw_enable_shortcodes', 'bnfw_allow_tracking', 'active_sitewide_plugins', 'bnfw_licenses', 'bnfw-async-notifications', 'bnfw-row-action-success-notice', 'bnfw-row-action-error-notice', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license_active';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname', 'description', 'bnfw-tab-addon-status', '_wp_attachment_image_alt', '_wp_attachment_metadata', '_edit_lock', '_export_file_url', '_export_file_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'nickname', 'description', 'bnfw-tab-addon-status', '_wp_attachment_image_alt', '_wp_attachment_metadata', '_edit_lock', '_export_file_url', '_export_file_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname', 'description', 'bnfw-tab-addon-status', '_wp_attachment_image_alt', '_wp_attachment_metadata', '_edit_lock', '_export_file_url', '_export_file_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname', 'description', 'bnfw-tab-addon-status', '_wp_attachment_image_alt', '_wp_attachment_metadata', '_edit_lock', '_export_file_url', '_export_file_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user-roles';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user-roles';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user-roles';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user-roles';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%users';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%users';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%users';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%users';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%disabled';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%disabled';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%disabled';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%disabled';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_bnfw_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_bnfw_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_bnfw_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_bnfw_%';

