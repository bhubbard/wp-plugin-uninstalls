#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wps_upf_licence_statut_on'
wp option delete 'wps_unique_brand'
wp option delete 'wps_global_shipping'
wp option delete 'wps_choix_variant'
wp option delete 'wps_choix_energy'
wp option delete 'wps_choix_adult'
wp option delete 'wps_choix_Apparel'
wp option delete 'wps_choix_color'
wp option delete 'wps_choix_size'
wp option delete 'wps_choix_gender'
wp option delete 'wps_choix_age'
wp option delete 'wps_adwords_id'
wp option delete 'wps_mini_price'
wp option delete 'wps_excluded_destination_shopping'
wp option delete 'wps_excluded_destination_shopping_actions'
wp option delete 'wps_excluded_destination_display_ads'
wp option delete 'wps_outofstock'
wp option delete 'wps_adword_custom_label'
wp option delete 'wps_custom_label_0'
wp option delete 'wps_custom_label_1'
wp option delete 'wps_custom_label_2'
wp option delete 'wps_custom_label_3'
wp option delete 'wps_custom_label_4'
wp option delete 'hide_category'
wp option delete 'wps_website_verification'
wp option delete 'product_category_add_form_fields'
wp option delete 'wps_category_general'
wp option delete 'ubeez_wps_license_key'
wp option delete 'wps_license_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'category_custom_order_%'"
wp option delete 'gmc_category_general'
wp option delete 'woocommerce_weight_unit'
wp option delete 'wps_choix_adword'
wp option delete 'wps_pixel_verification'
wp option delete 'wps_upf_licence_key'
wp option delete 'wps_upf_licence_status'
wp option delete 'wps_upf_licence_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hide_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hide_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hide_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hide_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adult'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adult'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adult'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adult'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_energy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_energy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_energy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_energy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_google_category_single'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_google_category_single'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_google_category_single'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_google_category_single'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_var_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_var_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_var_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_var_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_var_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_var_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_var_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_var_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_number_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_number_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_number_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_number_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_textarea'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_textarea'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_textarea'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_textarea'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_var_gender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_var_gender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_var_gender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_var_gender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_var_agegroup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_var_agegroup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_var_agegroup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_var_agegroup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hidden_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hidden_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hidden_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hidden_field'"
