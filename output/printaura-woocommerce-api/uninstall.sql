-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_classes', 'be_woocommerce_shipping_zones', 'dirsize_cache');
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_require_https';
DELETE FROM wp_options WHERE option_name LIKE '%_token';
DELETE FROM wp_options WHERE option_name LIKE '%_slug';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_product_image_gallery', 'product_ids', 'exclude_product_ids', '_product_attributes', '_tracking_number', '_tracking_url', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_product_image_gallery', 'product_ids', 'exclude_product_ids', '_product_attributes', '_tracking_number', '_tracking_url', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_product_image_gallery', 'product_ids', 'exclude_product_ids', '_product_attributes', '_tracking_number', '_tracking_url', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_product_image_gallery', 'product_ids', 'exclude_product_ids', '_product_attributes', '_tracking_number', '_tracking_url', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_mail_subject';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_mail_subject';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_mail_subject';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_mail_subject';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_mail_body';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_mail_body';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_mail_body';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_mail_body';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_mail_from';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_mail_from';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_mail_from';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_mail_from';

