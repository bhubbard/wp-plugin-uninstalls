#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wtc_tckn_required'
wp option delete 'wtc_corporate_names_required'
wp option delete 'wtc_contracts_enabled'
wp option delete 'wtc_dashboard_enabled'
wp option delete 'wtc_dashboard_chart_enabled'
wp option delete 'wtc_dashboard_chart_period'
wp option delete 'wtc_dashboard_theme_mode'
wp option delete 'wtc_coupons_enabled'
wp option delete 'wtc_coupon_endpoint'
wp option delete 'wtc_hide_cart_shipping_address'
wp option delete 'wtc_use_tl_symbol'
wp option delete 'wtc_shipping_visibility'
wp option delete 'wtc_register_name_fields_enabled'
wp option delete 'wtc_register_phone_field_enabled'
wp option delete 'wtc_company_info'
wp option delete 'wtc_contract_templates'
wp option delete 'wtc_contract_settings'
wp option delete 'wtc_show_public_coupons'
wp option delete 'wtc_coupon_menu_title'
wp option delete 'wtc_dashboard_custom_styles_enabled'
wp option delete 'wtc_dashboard_width_mode'
wp option delete 'wtc_dashboard_width_custom'
wp option delete 'wtc_dashboard_show_coupon_card'
wp option delete 'wtc_dashboard_show_points_card'
wp option delete 'wtc_dashboard_show_total_spent_card'
wp option delete 'wtc_dashboard_show_order_count_card'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wtc_dashboard_%'"
wp option delete 'wtc_point_endpoint'
wp option delete 'wtc_points_enabled'
wp option delete 'wtc_point_label'
wp option delete 'wtc_field_layouts'
wp option delete 'wtc_field_priorities'
wp option delete 'wtc_tckn_validation_enabled'
wp option delete 'wtc_hide_order_notes'
wp option delete 'wtc_points_coupon_compatibility'
wp option delete 'wtc_point_value'
wp option delete 'wtc_point_earn_rate'
wp option delete 'wtc_point_menu_title'
wp option delete 'wtc_signup_bonus'
wp option delete 'wtc_first_order_bonus'
wp option delete 'wtc_min_cart_total'
wp option delete 'wtc_point_expiry_days'
wp option delete 'wtc_apply_to_shipping'
wp option delete 'wtc_max_point_limit'
wp option delete 'wtc_min_point_limit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_invoice_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_invoice_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_invoice_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_invoice_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_tckn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_tckn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_tckn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_tckn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_tax_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_tax_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_tax_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_tax_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_tax_office'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_tax_office'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_tax_office'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_tax_office'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_name'"
