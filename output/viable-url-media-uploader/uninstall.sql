-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vumu_upload_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_vumu_original_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_vumu_original_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_vumu_original_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_vumu_original_url');

