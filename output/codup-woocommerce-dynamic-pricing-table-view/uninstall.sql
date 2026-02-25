-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_show_pricing_table', '_pricing_table_loc', '_tab_label', '_qty_label', '_discount_type_label', '_pricing_rules', '_price_discount_loc', '_price_discount_txt_field', '_percentage_discount_loc', '_percentage_discount_txt_field', '_fixed_price_loc', '_fixed_price_txt_field');
DELETE FROM wp_usermeta WHERE meta_key IN ('_show_pricing_table', '_pricing_table_loc', '_tab_label', '_qty_label', '_discount_type_label', '_pricing_rules', '_price_discount_loc', '_price_discount_txt_field', '_percentage_discount_loc', '_percentage_discount_txt_field', '_fixed_price_loc', '_fixed_price_txt_field');
DELETE FROM wp_termmeta WHERE meta_key IN ('_show_pricing_table', '_pricing_table_loc', '_tab_label', '_qty_label', '_discount_type_label', '_pricing_rules', '_price_discount_loc', '_price_discount_txt_field', '_percentage_discount_loc', '_percentage_discount_txt_field', '_fixed_price_loc', '_fixed_price_txt_field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_show_pricing_table', '_pricing_table_loc', '_tab_label', '_qty_label', '_discount_type_label', '_pricing_rules', '_price_discount_loc', '_price_discount_txt_field', '_percentage_discount_loc', '_percentage_discount_txt_field', '_fixed_price_loc', '_fixed_price_txt_field');

