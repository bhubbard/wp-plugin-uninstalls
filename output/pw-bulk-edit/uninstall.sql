-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_calc_taxes', 'woocommerce_manage_stock', 'woocommerce_tax_classes', 'pwbe_views', 'pwbe_database_version', 'pwbe_hide_pimwick_menu', 'hide_pimwick_menu', 'pwbe_requires_capability', 'pwbe_selected_view', 'pwbe_help_minimize_filter_help', 'pwbe_help_dismiss_intro', 'wc_featured_products');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_price');

