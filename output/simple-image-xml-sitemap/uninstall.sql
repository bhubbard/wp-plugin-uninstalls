-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sixs_posttypes_option_name', 'sixs_caption_1_option_name', 'sixs_caption_2_option_name', 'sixs_title_1_option_name', 'sixs_title_2_option_name', 'sixs_xml_autosave_option_name', 'sixs_option_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attached_file');

