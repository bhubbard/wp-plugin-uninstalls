-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wapf_options', 'wapf_queried_termid', 'wapf_queried_is_cat', 'wapf_queried_is_shop', 'woocommerce_default_catalog_orderby');

