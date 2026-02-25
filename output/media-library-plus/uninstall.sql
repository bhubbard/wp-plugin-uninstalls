-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mlpp_show_template_ad', 'classic-editor-replace', 'mlf-folder-check', 'mlfp-no-access-page-id');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_image_alt', '_wp_trash_meta_status', '_wp_trash_meta_time', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_image_alt', '_wp_trash_meta_status', '_wp_trash_meta_time', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_image_alt', '_wp_trash_meta_status', '_wp_trash_meta_time', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_image_alt', '_wp_trash_meta_status', '_wp_trash_meta_time', '_elementor_data');

