#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_text_color'
wp option delete 'woocommerce_email_header_image'
wp option delete 'wcrsprd_emasapcerr'
wp option delete 'wcrsprd_pickup_locations'
wp option delete 'wcrsprd_apimode'
wp option delete 'wcrsprd_apigmap'
wp option delete 'wcrsprd_apikey_live'
wp option delete 'wcrsprd_apikey'
wp option delete 'wcrsprd_apitoken_live'
wp option delete 'wcrsprd_apitoken'
wp option delete 'wcrsprd_apisecret_live'
wp option delete 'wcrsprd_apisecret'
wp option delete 'wcrsprd_apiphone_live'
wp option delete 'wcrsprd_apiphone'
wp option delete 'wcrsprd_apipmamsg'
wp option delete 'wcrsprd_apidelivery'
wp option delete 'wcrsprd_emasaporderr'
wp option delete 'wcrsprd_forceasapp'
wp option delete 'wcrsprd_add_provinces_dropdown'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcrsprd_apitoken%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcrsprd_apisecret%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcrsprd_apikey%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcrsprd_apiphone%'"
wp option delete 'asap_507_update_data'
wp option delete 'woocommerce_asap-shipping-method_settings'

# Delete Transients
wp transient delete 'asap_latitud'
wp transient delete 'asap_longitud'
wp transient delete 'asap_origin'
wp transient delete 'asap_address'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asap_delivery_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asap_delivery_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asap_delivery_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asap_delivery_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asap_pickup_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asap_pickup_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asap_pickup_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asap_pickup_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dest_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dest_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dest_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dest_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asap_latitude_dest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asap_latitude_dest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asap_latitude_dest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asap_latitude_dest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dest_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dest_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dest_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dest_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asap_longitude_dest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asap_longitude_dest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asap_longitude_dest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asap_longitude_dest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dest_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dest_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dest_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dest_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asap_tracking_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asap_tracking_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asap_tracking_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asap_tracking_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'partial_match'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'partial_match'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'partial_match'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'partial_match'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cancelOrder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cancelOrder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cancelOrder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cancelOrder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asap_vehicle_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asap_vehicle_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asap_vehicle_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asap_vehicle_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asap_laitude_dest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asap_laitude_dest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asap_laitude_dest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asap_laitude_dest'"
