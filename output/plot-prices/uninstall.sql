-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('charttype');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_chart_sale_price', '_chart_regular_price', '_chart_date', '_sale_price', '_regular_price', '_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_chart_sale_price', '_chart_regular_price', '_chart_date', '_sale_price', '_regular_price', '_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_chart_sale_price', '_chart_regular_price', '_chart_date', '_sale_price', '_regular_price', '_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_chart_sale_price', '_chart_regular_price', '_chart_date', '_sale_price', '_regular_price', '_product_attributes');

