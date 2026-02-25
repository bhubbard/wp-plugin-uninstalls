-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcpt_settings', 'wpclever_plugins', 'wpcpq_get_product_meta_keys');
DELETE FROM wp_options WHERE option_name LIKE 'wpcpt_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('type', 'categories', 'tags', 'terms', 'include', 'exclude', 'limit', 'orderby', 'order', 'style', 'layout', 'page_length', 'extra_classes', 'columns', 'localization');
DELETE FROM wp_usermeta WHERE meta_key IN ('type', 'categories', 'tags', 'terms', 'include', 'exclude', 'limit', 'orderby', 'order', 'style', 'layout', 'page_length', 'extra_classes', 'columns', 'localization');
DELETE FROM wp_termmeta WHERE meta_key IN ('type', 'categories', 'tags', 'terms', 'include', 'exclude', 'limit', 'orderby', 'order', 'style', 'layout', 'page_length', 'extra_classes', 'columns', 'localization');
DELETE FROM wp_commentmeta WHERE meta_key IN ('type', 'categories', 'tags', 'terms', 'include', 'exclude', 'limit', 'orderby', 'order', 'style', 'layout', 'page_length', 'extra_classes', 'columns', 'localization');

