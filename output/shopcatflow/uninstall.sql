-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_product_cat');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shopc_category_order', 'wcm_category_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('shopc_category_order', 'wcm_category_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('shopc_category_order', 'wcm_category_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shopc_category_order', 'wcm_category_order');

