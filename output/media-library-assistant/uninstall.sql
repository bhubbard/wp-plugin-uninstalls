-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smc_automatic_options', 'mla-upload-bulk-edit-example-batch');
DELETE FROM wp_options WHERE option_name LIKE '%-settings';
DELETE FROM wp_options WHERE option_name LIKE '%settings';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE '%figure_inserts';
DELETE FROM wp_options WHERE option_name LIKE '%image_inserts';
DELETE FROM wp_options WHERE option_name LIKE '%image_objects';
DELETE FROM wp_options WHERE option_name LIKE '%item_references';
DELETE FROM wp_options WHERE option_name LIKE '%attached_items';
DELETE FROM wp_options WHERE option_name LIKE '%figcaption_inserts';
DELETE FROM wp_options WHERE option_name LIKE '%featured_objects';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attached_file', '_thumbnail_id', '_wp_attachment_metadata', 'isc_image_source_own', '_jig_image_link', 'ref_offer', '_product_image_gallery', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attached_file', '_thumbnail_id', '_wp_attachment_metadata', 'isc_image_source_own', '_jig_image_link', 'ref_offer', '_product_image_gallery', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attached_file', '_thumbnail_id', '_wp_attachment_metadata', 'isc_image_source_own', '_jig_image_link', 'ref_offer', '_product_image_gallery', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attached_file', '_thumbnail_id', '_wp_attachment_metadata', 'isc_image_source_own', '_jig_image_link', 'ref_offer', '_product_image_gallery', '_sku');

