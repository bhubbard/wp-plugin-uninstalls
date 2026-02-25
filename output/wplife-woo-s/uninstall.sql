-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('add_sort_a', 'woocommerce_default_catalog_orderby', 'add_sort_z', 'add_sort_sku', 'woocommerce_default_catalog_orderby_sku', 'add_show_empty_cat', 'add_sort_date');

