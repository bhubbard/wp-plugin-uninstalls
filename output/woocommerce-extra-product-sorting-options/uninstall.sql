-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_db_version', 'wc_rename_default_sorting', 'woocommerce_default_catalog_orderby', 'active_sitewide_plugins', 'wc_extra_sorting_options_version', 'wc_extra_product_sorting_options');

