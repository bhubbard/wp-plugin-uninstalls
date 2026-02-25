#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'view_live_price'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'auto_complete_order'
wp option delete 'live_mode'
wp option delete 'enable_multiple_packages'
wp option delete 'authorization_key'
wp option delete 'default_carrier'
wp option delete 'default_parcel_length'
wp option delete 'default_parcel_width'
wp option delete 'default_parcel_height'
wp option delete 'default_parcel_weight'
wp option delete 'default_parcel_weight_unit'
wp option delete 'default_parcel_unit'
wp option delete 'track_shipment_url'
wp option delete 'quote_api_url'
wp option delete 'booking_api_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'insta_service_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'insta_service_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'insta_service_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'insta_service_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'insta_shipment_identity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'insta_shipment_identity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'insta_shipment_identity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'insta_shipment_identity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'insta_shipment_pdf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'insta_shipment_pdf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'insta_shipment_pdf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'insta_shipment_pdf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'insta_shipment_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'insta_shipment_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'insta_shipment_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'insta_shipment_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'insta_selected_service'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'insta_selected_service'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'insta_selected_service'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'insta_selected_service'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'insta_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'insta_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'insta_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'insta_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'insta_service_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'insta_service_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'insta_service_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'insta_service_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'insta_total_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'insta_total_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'insta_total_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'insta_total_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'insta_service'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'insta_service'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'insta_service'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'insta_service'"
