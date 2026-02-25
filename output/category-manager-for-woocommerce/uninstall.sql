-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_product_cat', 'cmfwc_category_dropdown', 'cmfwc_categories_0');
DELETE FROM wp_options WHERE option_name LIKE 'cmfwc_categories_%';
DELETE FROM wp_options WHERE option_name LIKE 'cmfwc_deleted_category_%';
DELETE FROM wp_options WHERE option_name LIKE 'cmfwc_deleted_category_parent_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cmfwc_order', 'order', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('cmfwc_order', 'order', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('cmfwc_order', 'order', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cmfwc_order', 'order', 'thumbnail_id');

