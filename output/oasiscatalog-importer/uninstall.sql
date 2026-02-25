-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oasis_import_options', 'woocommerce_custom_orders_table_enabled', 'oasis_import_progress', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('oasis_cat_id', '_stock', 'thumbnail_id', 'oasis_queue_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('oasis_cat_id', '_stock', 'thumbnail_id', 'oasis_queue_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('oasis_cat_id', '_stock', 'thumbnail_id', 'oasis_queue_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('oasis_cat_id', '_stock', 'thumbnail_id', 'oasis_queue_id');

