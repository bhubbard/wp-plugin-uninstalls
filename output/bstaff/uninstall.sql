-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bstaff_is_director', 'bstaff_image_display', 'bstaff_column_options', 'bstaff_button_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bstaff_position', '_bstaff_department', '_bstaff_section', '_bstaff_bio', '_bstaff_email', '_bstaff_emailSubject', '_bstaff_emailbuttonText', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bstaff_position', '_bstaff_department', '_bstaff_section', '_bstaff_bio', '_bstaff_email', '_bstaff_emailSubject', '_bstaff_emailbuttonText', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bstaff_position', '_bstaff_department', '_bstaff_section', '_bstaff_bio', '_bstaff_email', '_bstaff_emailSubject', '_bstaff_emailbuttonText', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bstaff_position', '_bstaff_department', '_bstaff_section', '_bstaff_bio', '_bstaff_email', '_bstaff_emailSubject', '_bstaff_emailbuttonText', '_wp_attachment_image_alt');

