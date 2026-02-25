-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cost_of_goods', 'rewrite_regular_price', 'regular_price_vat', 'profit');
DELETE FROM wp_usermeta WHERE meta_key IN ('cost_of_goods', 'rewrite_regular_price', 'regular_price_vat', 'profit');
DELETE FROM wp_termmeta WHERE meta_key IN ('cost_of_goods', 'rewrite_regular_price', 'regular_price_vat', 'profit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cost_of_goods', 'rewrite_regular_price', 'regular_price_vat', 'profit');

