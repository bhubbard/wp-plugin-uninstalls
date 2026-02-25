-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpleclinic_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('suffix', 'jobtitle', 'pracphoto', '_wp_attachment_image_alt', 'pracphoto2', '_wp_attachment_image_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('suffix', 'jobtitle', 'pracphoto', '_wp_attachment_image_alt', 'pracphoto2', '_wp_attachment_image_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('suffix', 'jobtitle', 'pracphoto', '_wp_attachment_image_alt', 'pracphoto2', '_wp_attachment_image_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('suffix', 'jobtitle', 'pracphoto', '_wp_attachment_image_alt', 'pracphoto2', '_wp_attachment_image_title');

