-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mt2mba_max_variations', 'mt2mba_db_version', 'mt2mba_desc_behavior', 'mt2mba_dropdown_behavior', 'mt2mba_include_attrb_name', 'mt2mba_hide_base_price', 'mt2mba_sale_price_markup', 'mt2mba_round_markup', 'mt2mba_allow_zero');
DELETE FROM wp_options WHERE option_name LIKE 'mt2mba_current_base_%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_var_prices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mt2mba_markup', 'mt2mba_base_regular_price', 'mt2mba_base_sale_price', '_price', '_min_variation_price', '_max_variation_price', '_min_variation_regular_price', '_max_variation_regular_price', '_min_variation_sale_price', '_max_variation_sale_price', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('mt2mba_markup', 'mt2mba_base_regular_price', 'mt2mba_base_sale_price', '_price', '_min_variation_price', '_max_variation_price', '_min_variation_regular_price', '_max_variation_regular_price', '_min_variation_sale_price', '_max_variation_sale_price', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('mt2mba_markup', 'mt2mba_base_regular_price', 'mt2mba_base_sale_price', '_price', '_min_variation_price', '_max_variation_price', '_min_variation_regular_price', '_max_variation_regular_price', '_min_variation_sale_price', '_max_variation_sale_price', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mt2mba_markup', 'mt2mba_base_regular_price', 'mt2mba_base_sale_price', '_price', '_min_variation_price', '_max_variation_price', '_min_variation_regular_price', '_max_variation_regular_price', '_min_variation_sale_price', '_max_variation_sale_price', 'dismissed_wp_pointers');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mt2mba_base_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mt2mba_base_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mt2mba_base_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mt2mba_base_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_markup_amount';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_markup_amount';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_markup_amount';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_markup_amount';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mt2mba_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mt2mba_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mt2mba_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mt2mba_%';

