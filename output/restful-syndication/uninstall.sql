-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%settings';
DELETE FROM wp_options WHERE option_name LIKE '%history';
DELETE FROM wp_options WHERE option_name LIKE '%history_delete';
DELETE FROM wp_options WHERE option_name LIKE '%history_delete_media';
DELETE FROM wp_options WHERE option_name LIKE '%last_attempt';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('author_profile_image', 'restfulsyndication_original_url', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('author_profile_image', 'restfulsyndication_original_url', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('author_profile_image', 'restfulsyndication_original_url', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('author_profile_image', 'restfulsyndication_original_url', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%source_guid';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%source_guid';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%source_guid';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%source_guid';

