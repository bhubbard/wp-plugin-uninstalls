-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('display_type', '_yoast_wpseo_primary_product_cat', 'page_parent_child_redirect', 'alternative_taxonomy_page_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('display_type', '_yoast_wpseo_primary_product_cat', 'page_parent_child_redirect', 'alternative_taxonomy_page_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('display_type', '_yoast_wpseo_primary_product_cat', 'page_parent_child_redirect', 'alternative_taxonomy_page_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('display_type', '_yoast_wpseo_primary_product_cat', 'page_parent_child_redirect', 'alternative_taxonomy_page_title');

