#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fc_load_unminified_assets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_db_update_notice'"
wp option delete 'woocommerce_gzdp_checkout_enable'
wp option delete 'fc_plugin_activation_time'
wp option delete 'awdp_disable_discount'
wp option delete 'awdp_fee_label'
wp option delete 'woocommerce_dintero_checkout_settings'
wp option delete 'elementor_woocommerce_purchase_summary_page_id'
wp option delete 'woocommerce_eh_paypal_express_settings'
wp option delete 'generate_menu_plus_settings'
wp option delete 'vp_woo_pont_custom_button_label'
wp option delete 'kt_woo_extras'
wp option delete 'woocommerce_payplus-payment-gateway_settings'
wp option delete 'seur_2shop_custom_name_field'
wp option delete 'seur_classic_int_2shop_custom_name_field'
wp option delete 'szbd_precise_address'
wp option delete 'szbd_map_placement'
wp option delete 'woocommerce_gzdp_enable_vat_check'
wp option delete 'woocommerce_sf_add_company_billing_fields_id'
wp option delete 'woocommerce_sf_add_company_billing_fields_vat'
wp option delete 'woocommerce_sf_add_company_billing_fields_tax'
wp option delete 'generate_settings'
wp option delete 'alt_bg_color'
wp option delete 'section_divide_color'
wp option delete 'secondary_accent_color'
wp option delete 'secondary_accent_alt_color'
wp option delete 'body_color'
wp option delete 'accent_color'
wp option delete 'sf_neighborhood_options'
wp option delete 'woocommerce_securesubmit_settings'
wp option delete 'fc_debug_mode'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_tooltip_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_tooltip_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_tooltip_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_tooltip_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_estimation_delivery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_estimation_delivery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_estimation_delivery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_estimation_delivery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mfn-post-custom-layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mfn-post-custom-layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mfn-post-custom-layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mfn-post-custom-layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mfn-post-sticky-header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mfn-post-sticky-header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mfn-post-sticky-header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mfn-post-sticky-header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_suki_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_suki_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_suki_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_suki_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'suki_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'suki_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'suki_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'suki_page_settings'"
