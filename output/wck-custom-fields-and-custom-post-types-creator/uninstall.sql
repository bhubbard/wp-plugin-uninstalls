-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wck_cptc', 'wck_meta_boxes_ids', 'wck_update_to_unserialized', 'wck_ctc', 'wck_serial_status', 'wck_license_details', 'wck_tools', 'wck_serial', 'wck_extra_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wck_cfc_args', 'wck_cfc_fields', 'wck_cfc_post_type_arg', 'wck_cfc_post_id_arg', 'wck_cfc_page_template_arg', '_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('wck_cfc_args', 'wck_cfc_fields', 'wck_cfc_post_type_arg', 'wck_cfc_post_id_arg', 'wck_cfc_page_template_arg', '_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('wck_cfc_args', 'wck_cfc_fields', 'wck_cfc_post_type_arg', 'wck_cfc_post_id_arg', 'wck_cfc_page_template_arg', '_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wck_cfc_args', 'wck_cfc_fields', 'wck_cfc_post_type_arg', 'wck_cfc_post_id_arg', 'wck_cfc_page_template_arg', '_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_notification';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_notification';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_notification';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_notification';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_args';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_args';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_args';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_args';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_1';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_1';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_1';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_1';

