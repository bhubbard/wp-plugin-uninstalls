-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('niz_woo_ajload', 'niz_ajax_loadmore_products_custom_query');

