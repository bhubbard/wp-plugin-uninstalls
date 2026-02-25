#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_checkout_company_field'
wp option delete 'woocommerce_coming_soon'
wp option delete 'surbma_hc_license_status'
wp option delete 'surbma_hc_license'
wp option delete 'surbma_hc_fields'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_checkout_address_2_field'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_wc_szamlazz_settings'
wp option delete 'woocommerce_wc_billingo_plus_settings'
wp option delete 'wc_billingo_vat_number_form'
wp option delete 'wc_billingo_vat_number_form_checkbox_custom'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pand-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'surbma_hc_new_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'surbma_hc_new_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'surbma_hc_new_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'surbma_hc_new_dashboard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-box-order_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-box-order_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-box-order_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-box-order_dashboard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reg_accept_pp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reg_accept_pp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reg_accept_pp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reg_accept_pp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reg_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reg_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reg_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reg_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cps_hc_wcgems_payment_methods'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cps_hc_wcgems_payment_methods'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cps_hc_wcgems_payment_methods'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cps_hc_wcgems_payment_methods'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'surbma_hc_product_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'surbma_hc_product_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'surbma_hc_product_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'surbma_hc_product_subtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_tax_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_tax_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_tax_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_tax_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hc_product_price_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hc_product_price_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hc_product_price_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hc_product_price_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hc_product_lowest_price_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hc_product_lowest_price_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hc_product_lowest_price_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hc_product_lowest_price_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hc_product_hide_lowest_price_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hc_product_hide_lowest_price_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hc_product_hide_lowest_price_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hc_product_hide_lowest_price_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hc_productpricehistory_statisticslinkdisplay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hc_productpricehistory_statisticslinkdisplay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hc_productpricehistory_statisticslinkdisplay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hc_productpricehistory_statisticslinkdisplay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
