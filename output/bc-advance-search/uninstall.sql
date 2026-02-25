-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bigcommerce_currency_symbol', 'bigcommerce_advance_search_option_name', 'bas_design_search_box_general', 'bas_design_search_box', 'bas_design_search_button', 'bas_design_search_others');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bigcommerce_calculated_price', 'bigcommerce_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('bigcommerce_calculated_price', 'bigcommerce_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('bigcommerce_calculated_price', 'bigcommerce_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bigcommerce_calculated_price', 'bigcommerce_id');

