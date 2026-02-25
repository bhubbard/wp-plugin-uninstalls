-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('it_black_friday_banner_dismissed', 'woocommerce_hide_out_of_stock_items', 'iwptp_editor_theme', 'iwptpl_some_setting', 'iwptpl_usage_track', 'ithemeland_activation_email', 'iwptpl_onboarding', 'iwptpl_opt_in', 'woocommerce_price_display_suffix', 'woocommerce_prices_include_tax', 'woocommerce_tax_display_shop', 'woocommerce_price_num_decimals', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'woocommerce_currency_pos', 'waveplayer_skin', 'alg_wc_pq_step_section_enabled', 'alg_wc_pq_step', 'wcqv_options', 'ced_hpul_enable_hide_price', 'ced_hp_password_for_price', 'ced_hpr_role', 'woocommerce_price_trim_zeros', 'wcb2b_hide_prices', 'addify_atq_page_id', 'afrfq_view_button_message', 'enable_o_o_s_products', 'afrfq_pro_success_message', 'wwpp_settings_hide_quantity_discount_table', 'wwp_hide_price_add_to_cart', 'wwp_price_and_add_to_cart_replacement_message', 'iwptp_settings', 'iwptp_sessions_db_version', 'iwptpl_is_active');
DELETE FROM wp_options WHERE option_name LIKE '%_email_subscription_sent';
DELETE FROM wp_options WHERE option_name LIKE '%_add_to_cart_button_text';
DELETE FROM wp_options WHERE option_name LIKE 'iwptp_variations_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('iwptp_data', 'total_sales', '_preview_files', '_available_on', '_upcoming', 'afrfq_is_hide_price', 'afrfq_hide_price_text', 'afrfq_is_hide_addtocart', 'afrfq_custom_button_text', 'afrfq_custom_button_link', 'afrfq_rule_type', 'afrfq_hide_products', 'afrfq_hide_categories', 'afrfq_hide_user_role', 'afrfq_apply_on_all_products', 'iwptp_preset_required', 'iwptp_preset_applied__message_required', 'iwptp_preset_applied__slug', 'iwptp_fonts');
DELETE FROM wp_usermeta WHERE meta_key IN ('iwptp_data', 'total_sales', '_preview_files', '_available_on', '_upcoming', 'afrfq_is_hide_price', 'afrfq_hide_price_text', 'afrfq_is_hide_addtocart', 'afrfq_custom_button_text', 'afrfq_custom_button_link', 'afrfq_rule_type', 'afrfq_hide_products', 'afrfq_hide_categories', 'afrfq_hide_user_role', 'afrfq_apply_on_all_products', 'iwptp_preset_required', 'iwptp_preset_applied__message_required', 'iwptp_preset_applied__slug', 'iwptp_fonts');
DELETE FROM wp_termmeta WHERE meta_key IN ('iwptp_data', 'total_sales', '_preview_files', '_available_on', '_upcoming', 'afrfq_is_hide_price', 'afrfq_hide_price_text', 'afrfq_is_hide_addtocart', 'afrfq_custom_button_text', 'afrfq_custom_button_link', 'afrfq_rule_type', 'afrfq_hide_products', 'afrfq_hide_categories', 'afrfq_hide_user_role', 'afrfq_apply_on_all_products', 'iwptp_preset_required', 'iwptp_preset_applied__message_required', 'iwptp_preset_applied__slug', 'iwptp_fonts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('iwptp_data', 'total_sales', '_preview_files', '_available_on', '_upcoming', 'afrfq_is_hide_price', 'afrfq_hide_price_text', 'afrfq_is_hide_addtocart', 'afrfq_custom_button_text', 'afrfq_custom_button_link', 'afrfq_rule_type', 'afrfq_hide_products', 'afrfq_hide_categories', 'afrfq_hide_user_role', 'afrfq_apply_on_all_products', 'iwptp_preset_required', 'iwptp_preset_applied__message_required', 'iwptp_preset_applied__slug', 'iwptp_fonts');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_pa_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_pa_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_pa_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_pa_%';

