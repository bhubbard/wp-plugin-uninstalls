-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mmww_options', 'mmww_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_mmww_saved_attachment_metadata', '_wp_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_mmww_saved_attachment_metadata', '_wp_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_mmww_saved_attachment_metadata', '_wp_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_mmww_saved_attachment_metadata', '_wp_attachment_metadata');

