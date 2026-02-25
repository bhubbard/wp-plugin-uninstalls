-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mjwcws_qty', 'mjwcws_price_type', 'mjwcws_price', 'mjwcws_sale_price_type', 'mjwcws_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('mjwcws_qty', 'mjwcws_price_type', 'mjwcws_price', 'mjwcws_sale_price_type', 'mjwcws_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('mjwcws_qty', 'mjwcws_price_type', 'mjwcws_price', 'mjwcws_sale_price_type', 'mjwcws_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mjwcws_qty', 'mjwcws_price_type', 'mjwcws_price', 'mjwcws_sale_price_type', 'mjwcws_sale_price');

