-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('usces');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_itemCode', '_wp_attachment_image_alt', '_iu4w_meta', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_itemCode', '_wp_attachment_image_alt', '_iu4w_meta', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_itemCode', '_wp_attachment_image_alt', '_iu4w_meta', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_itemCode', '_wp_attachment_image_alt', '_iu4w_meta', '_thumbnail_id');

