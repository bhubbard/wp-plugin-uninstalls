-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wtc_tckn_required', 'wtc_corporate_names_required', 'wtc_contracts_enabled', 'wtc_dashboard_enabled', 'wtc_dashboard_chart_enabled', 'wtc_dashboard_chart_period', 'wtc_dashboard_theme_mode', 'wtc_coupons_enabled', 'wtc_coupon_endpoint', 'wtc_hide_cart_shipping_address', 'wtc_use_tl_symbol', 'wtc_shipping_visibility', 'wtc_register_name_fields_enabled', 'wtc_register_phone_field_enabled', 'wtc_company_info', 'wtc_contract_templates', 'wtc_contract_settings', 'wtc_show_public_coupons', 'wtc_coupon_menu_title', 'wtc_dashboard_custom_styles_enabled', 'wtc_dashboard_width_mode', 'wtc_dashboard_width_custom', 'wtc_dashboard_show_coupon_card', 'wtc_dashboard_show_points_card', 'wtc_dashboard_show_total_spent_card', 'wtc_dashboard_show_order_count_card', 'wtc_point_endpoint', 'wtc_points_enabled', 'wtc_point_label', 'wtc_field_layouts', 'wtc_field_priorities', 'wtc_tckn_validation_enabled', 'wtc_hide_order_notes', 'wtc_points_coupon_compatibility', 'wtc_point_value', 'wtc_point_earn_rate', 'wtc_point_menu_title', 'wtc_signup_bonus', 'wtc_first_order_bonus', 'wtc_min_cart_total', 'wtc_point_expiry_days', 'wtc_apply_to_shipping', 'wtc_max_point_limit', 'wtc_min_point_limit');
DELETE FROM wp_options WHERE option_name LIKE 'wtc_dashboard_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_country', 'billing_state', 'first_name', 'billing_first_name', 'shipping_first_name', 'last_name', 'billing_last_name', 'shipping_last_name', 'billing_phone', 'billing_invoice_type', 'billing_city', 'shipping_state', 'shipping_city', 'billing_tckn', 'billing_tax_number', 'billing_tax_office', 'shipping_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_country', 'billing_state', 'first_name', 'billing_first_name', 'shipping_first_name', 'last_name', 'billing_last_name', 'shipping_last_name', 'billing_phone', 'billing_invoice_type', 'billing_city', 'shipping_state', 'shipping_city', 'billing_tckn', 'billing_tax_number', 'billing_tax_office', 'shipping_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_country', 'billing_state', 'first_name', 'billing_first_name', 'shipping_first_name', 'last_name', 'billing_last_name', 'shipping_last_name', 'billing_phone', 'billing_invoice_type', 'billing_city', 'shipping_state', 'shipping_city', 'billing_tckn', 'billing_tax_number', 'billing_tax_office', 'shipping_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_country', 'billing_state', 'first_name', 'billing_first_name', 'shipping_first_name', 'last_name', 'billing_last_name', 'shipping_last_name', 'billing_phone', 'billing_invoice_type', 'billing_city', 'shipping_state', 'shipping_city', 'billing_tckn', 'billing_tax_number', 'billing_tax_office', 'shipping_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shipping_%';

