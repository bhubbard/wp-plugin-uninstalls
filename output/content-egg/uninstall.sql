-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_product_cat', 'cegg_prefill_batch_lock', 'cegg_autoimport_lock', 'cegg_product_import_batch_lock');
DELETE FROM wp_options WHERE option_name LIKE 'content-egg_%';
DELETE FROM wp_options WHERE option_name LIKE 'cegg_lock_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_image_gallery', '_cegg_import_unique_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_image_gallery', '_cegg_import_unique_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_image_gallery', '_cegg_import_unique_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_image_gallery', '_cegg_import_unique_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cegg_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cegg_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cegg_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cegg_%';

