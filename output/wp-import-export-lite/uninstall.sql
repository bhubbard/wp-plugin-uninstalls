-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpie_plugin_version', 'wpie_install_date', 'wpie_db_version', 'wpie_delete_on_uninstall', 'wpie_bg_and_cron_processing', 'wpie_extensions', 'wpie_flush_rewrite_rules', 'wpie_is_admin_notice_clear', 'wpie_is_updated_file_security');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wpie_file_security_notice', '_wpie_order_number', '_wp_page_template', '_wp_attached_file', '_wp_attachment_image_alt', '_product_image_gallery', 'thumbnail_id', '_thumbnail_id', 'fave_property_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wpie_file_security_notice', '_wpie_order_number', '_wp_page_template', '_wp_attached_file', '_wp_attachment_image_alt', '_product_image_gallery', 'thumbnail_id', '_thumbnail_id', 'fave_property_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wpie_file_security_notice', '_wpie_order_number', '_wp_page_template', '_wp_attached_file', '_wp_attachment_image_alt', '_product_image_gallery', 'thumbnail_id', '_thumbnail_id', 'fave_property_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wpie_file_security_notice', '_wpie_order_number', '_wp_page_template', '_wp_attached_file', '_wp_attachment_image_alt', '_product_image_gallery', 'thumbnail_id', '_thumbnail_id', 'fave_property_images');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';

