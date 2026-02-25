-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('save_gnrl_settings_plgfyexpo', 'leadtopreviewitem', 'already_impoted_rules_plugify_extra');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_plugify_is_opt_ttl', '_plugify_is_ttl', '_plugify_lbl_opt_ttl', '_plugify_lbl_ttl', 'woosppo_selected_pro_cat_type', 'woosppo_allowed_products_cat', 'woosppo_all_fields_metadata', 'woosppo_all_rules_for_fields', 'woosppo_padding_t', 'woosppo_padding_r', 'woosppo_padding_b', 'woosppo_padding_l', 'woosppo_bg_color', 'woosppo_brdr_rdius', 'woosppo_enable_shadow', 'woosppo_lbl_pos', 'woosppo_lbl_txt_color', '_regular_price', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_plugify_is_opt_ttl', '_plugify_is_ttl', '_plugify_lbl_opt_ttl', '_plugify_lbl_ttl', 'woosppo_selected_pro_cat_type', 'woosppo_allowed_products_cat', 'woosppo_all_fields_metadata', 'woosppo_all_rules_for_fields', 'woosppo_padding_t', 'woosppo_padding_r', 'woosppo_padding_b', 'woosppo_padding_l', 'woosppo_bg_color', 'woosppo_brdr_rdius', 'woosppo_enable_shadow', 'woosppo_lbl_pos', 'woosppo_lbl_txt_color', '_regular_price', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_plugify_is_opt_ttl', '_plugify_is_ttl', '_plugify_lbl_opt_ttl', '_plugify_lbl_ttl', 'woosppo_selected_pro_cat_type', 'woosppo_allowed_products_cat', 'woosppo_all_fields_metadata', 'woosppo_all_rules_for_fields', 'woosppo_padding_t', 'woosppo_padding_r', 'woosppo_padding_b', 'woosppo_padding_l', 'woosppo_bg_color', 'woosppo_brdr_rdius', 'woosppo_enable_shadow', 'woosppo_lbl_pos', 'woosppo_lbl_txt_color', '_regular_price', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_plugify_is_opt_ttl', '_plugify_is_ttl', '_plugify_lbl_opt_ttl', '_plugify_lbl_ttl', 'woosppo_selected_pro_cat_type', 'woosppo_allowed_products_cat', 'woosppo_all_fields_metadata', 'woosppo_all_rules_for_fields', 'woosppo_padding_t', 'woosppo_padding_r', 'woosppo_padding_b', 'woosppo_padding_l', 'woosppo_bg_color', 'woosppo_brdr_rdius', 'woosppo_enable_shadow', 'woosppo_lbl_pos', 'woosppo_lbl_txt_color', '_regular_price', '_price');

