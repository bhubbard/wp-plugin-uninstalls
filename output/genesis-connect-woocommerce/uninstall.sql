-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shop_slug', 'woocommerce_prepend_shop_page_to_urls', 'gencwooc_products_per_page', 'woocommerce_shop_page_title', 'woocommerce_hide_out_of_stock_items');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gsm_menu', '_ss_sidebar', '_ss_sidebar_alt', '_genesis_layout');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gsm_menu', '_ss_sidebar', '_ss_sidebar_alt', '_genesis_layout');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gsm_menu', '_ss_sidebar', '_ss_sidebar_alt', '_genesis_layout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gsm_menu', '_ss_sidebar', '_ss_sidebar_alt', '_genesis_layout');

