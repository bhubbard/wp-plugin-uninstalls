-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eaar_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'eaar_object_position', '_wp_attachment_metadata', '_eaar_auto_unpublished', '_eaar_auto_unpublished_by');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'eaar_object_position', '_wp_attachment_metadata', '_eaar_auto_unpublished', '_eaar_auto_unpublished_by');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'eaar_object_position', '_wp_attachment_metadata', '_eaar_auto_unpublished', '_eaar_auto_unpublished_by');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'eaar_object_position', '_wp_attachment_metadata', '_eaar_auto_unpublished', '_eaar_auto_unpublished_by');

