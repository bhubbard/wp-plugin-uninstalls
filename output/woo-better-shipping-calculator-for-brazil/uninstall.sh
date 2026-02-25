#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_better_calc_contact_required'
wp option delete 'woocommerce_checkout_company_field'
wp option delete 'woo_better_calc_company_field_behavior'
wp option delete 'woo_better_calc_disabled_shipping'
wp option delete 'woo_better_calc_enable_auto_cache_reset'
wp option delete 'woo_better_enable_min_free_shipping'
wp option delete 'woo_better_min_free_shipping_value'
wp option delete 'woo_better_only_free_shipping'
wp option delete 'woo_better_calc_person_type_select'
wp option delete 'woo_better_calc_font_source'
wp option delete 'woo_better_calc_number_required'
wp option delete 'woo_better_calc_enable_order_details'
wp option delete 'woo_better_calc_enable_neighborhood_field'
wp option delete 'woo_better_calc_apply_phone_mask'
wp option delete 'woo_better_calc_apply_cpf_mask'
wp option delete 'woo_better_calc_apply_cnpj_mask'
wp option delete 'woo_better_calc_cep_field_position'
wp option delete 'woo_better_calc_enable_auto_address_fill'
wp option delete 'woo_better_calc_enable_cart_page'
wp option delete 'woo_better_calc_cart_input_icon'
wp option delete 'woo_better_calc_enable_product_page'
wp option delete 'woo_better_calc_product_input_icon'
wp option delete 'woo_better_calc_enable_settings_link'
wp option delete 'woo_better_calc_enable_auto_postcode_search'
wp option delete 'woo_better_calc_cache_expiration_time'
wp option delete 'woo_better_min_free_shipping_message'
wp option delete 'woo_better_min_free_shipping_success_message'
wp option delete 'woo_better_enable_progress_bar_value'
wp option delete 'woo_better_calc_cart_input_placeholder'
wp option delete 'woo_better_calc_cart_input_position'
wp option delete 'woo_better_calc_cart_custom_position'
wp option delete 'woo_better_calc_cart_input_background_color_field'
wp option delete 'woo_better_calc_cart_input_color_field'
wp option delete 'woo_better_calc_cart_input_border_width'
wp option delete 'woo_better_calc_cart_input_border_style'
wp option delete 'woo_better_calc_cart_input_border_color_field'
wp option delete 'woo_better_calc_cart_input_border_radius'
wp option delete 'woo_better_calc_cart_button_background_color_field'
wp option delete 'woo_better_calc_cart_button_color_field'
wp option delete 'woo_better_calc_cart_button_border_width'
wp option delete 'woo_better_calc_cart_button_border_style'
wp option delete 'woo_better_calc_cart_button_border_color_field'
wp option delete 'woo_better_calc_cart_button_border_radius'
wp option delete 'woo_better_calc_cart_input_icon_color'
wp option delete 'woo_better_calc_product_input_placeholder'
wp option delete 'woo_better_calc_product_input_position'
wp option delete 'woo_better_calc_product_custom_position'
wp option delete 'woo_better_calc_product_input_background_color_field'
wp option delete 'woo_better_calc_product_input_color_field'
wp option delete 'woo_better_calc_product_input_border_width'
wp option delete 'woo_better_calc_product_input_border_style'
wp option delete 'woo_better_calc_product_input_border_color_field'
wp option delete 'woo_better_calc_product_input_border_radius'
wp option delete 'woo_better_calc_product_button_background_color_field'
wp option delete 'woo_better_calc_product_button_color_field'
wp option delete 'woo_better_calc_product_button_border_width'
wp option delete 'woo_better_calc_product_button_border_style'
wp option delete 'woo_better_calc_product_button_border_color_field'
wp option delete 'woo_better_calc_product_button_border_radius'
wp option delete 'woo_better_calc_product_input_icon_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_better_calc_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_better_calc_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_better_calc_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_better_calc_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_persontype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_persontype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_persontype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_persontype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_cpf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_cpf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_cpf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_cpf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_cnpj'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_cnpj'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_cnpj'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_cnpj'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_document'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_document'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_document'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_document'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone_country_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone_country_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone_country_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone_country_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone_country_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone_country_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone_country_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone_country_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_neighborhood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lkn_billing_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lkn_billing_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lkn_billing_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lkn_billing_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lkn_shipping_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lkn_shipping_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lkn_shipping_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lkn_shipping_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_neighborhood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_number'"
