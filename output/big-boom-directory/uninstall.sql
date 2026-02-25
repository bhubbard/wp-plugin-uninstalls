-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_bbd_search_widget', 'bbd_options', '_bbd_flush_rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_bbd_meta_acf_archive_fields', '_bbd_meta_acf_single_fields', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_bbd_meta_acf_archive_fields', '_bbd_meta_acf_single_fields', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_bbd_meta_acf_archive_fields', '_bbd_meta_acf_single_fields', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_bbd_meta_acf_archive_fields', '_bbd_meta_acf_single_fields', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fields';

