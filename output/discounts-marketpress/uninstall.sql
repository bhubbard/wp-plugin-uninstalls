-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('regular_price', 'has_sale', 'sale_price_amount', 'sale_price_percentage', 'sale_price_start_date', 'sale_price_end_date', 'sort_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('regular_price', 'has_sale', 'sale_price_amount', 'sale_price_percentage', 'sale_price_start_date', 'sale_price_end_date', 'sort_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('regular_price', 'has_sale', 'sale_price_amount', 'sale_price_percentage', 'sale_price_start_date', 'sale_price_end_date', 'sort_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('regular_price', 'has_sale', 'sale_price_amount', 'sale_price_percentage', 'sale_price_start_date', 'sale_price_end_date', 'sort_price');

