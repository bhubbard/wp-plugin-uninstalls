-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_parameters';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', '_ship_to_billing', '_hide_price', '_not_for_sale', '_special', '_on_sale', '_expired', '_onsale', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', '_ship_to_billing', '_hide_price', '_not_for_sale', '_special', '_on_sale', '_expired', '_onsale', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', '_ship_to_billing', '_hide_price', '_not_for_sale', '_special', '_on_sale', '_expired', '_onsale', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', '_ship_to_billing', '_hide_price', '_not_for_sale', '_special', '_on_sale', '_expired', '_onsale', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

