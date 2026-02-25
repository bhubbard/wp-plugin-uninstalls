#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_wuunder_google_maps_api_key'
wp option delete 'wc_wuunder_api_status'
wp option delete 'woocommerce_wuunder_parcelshop_settings'
wp option delete 'default_carrier_list'
wp option delete 'wc_wuunder_mapping_method_1'
wp option delete 'wc_wuunder_mapping_filter_1'
wp option delete 'wc_wuunder_mapping_method_2'
wp option delete 'wc_wuunder_mapping_filter_2'
wp option delete 'wc_wuunder_mapping_method_3'
wp option delete 'wc_wuunder_mapping_filter_3'
wp option delete 'wc_wuunder_mapping_method_4'
wp option delete 'wc_wuunder_mapping_filter_4'
wp option delete 'woocommerce_weight_unit'
wp option delete 'wc_wuunder_api'
wp option delete 'wc_wuunder_test_api'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'wc_wuunder_default_image_base64'
wp option delete 'wc_wuunder_company_email'
wp option delete 'wc_wuunder_company_lastname'
wp option delete 'wc_wuunder_company_firstname'
wp option delete 'wc_wuunder_company_city'
wp option delete 'wc_wuunder_company_street'
wp option delete 'wc_wuunder_company_housenumber'
wp option delete 'wc_wuunder_company_postode'
wp option delete 'wc_wuunder_company_phone'
wp option delete 'wc_wuunder_company_country'
wp option delete 'wc_wuunder_company_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wuunder_label_booking_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wuunder_label_booking_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wuunder_label_booking_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wuunder_label_booking_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parcelshop_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parcelshop_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parcelshop_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parcelshop_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wuunder_label_booking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wuunder_label_booking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wuunder_label_booking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wuunder_label_booking_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wuunder_label_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wuunder_label_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wuunder_label_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wuunder_label_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wuunder_label_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wuunder_label_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wuunder_label_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wuunder_label_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wuunder_track_and_trace_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wuunder_track_and_trace_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wuunder_track_and_trace_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wuunder_track_and_trace_url'"
