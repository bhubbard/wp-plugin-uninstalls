#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_transient_login_credentials_from_gigl_deleivery'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_gigl_delivery_settings'

# Delete Transients
wp transient delete 'login_credentials_from_gigl_deleivery'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gigl_delivery_waybill'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gigl_delivery_waybill'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gigl_delivery_waybill'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gigl_delivery_waybill'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gigl_delivery_check_status_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gigl_delivery_check_status_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gigl_delivery_check_status_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gigl_delivery_check_status_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gigl_delivery_pickup_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gigl_delivery_pickup_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gigl_delivery_pickup_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gigl_delivery_pickup_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gigl_delivery_pickup_tracking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gigl_delivery_pickup_tracking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gigl_delivery_pickup_tracking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gigl_delivery_pickup_tracking_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gigl_delivery_delivery_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gigl_delivery_delivery_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gigl_delivery_delivery_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gigl_delivery_delivery_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gigl_delivery_delivery_tracking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gigl_delivery_delivery_tracking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gigl_delivery_delivery_tracking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gigl_delivery_delivery_tracking_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gigl_delivery_status_res'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gigl_delivery_status_res'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gigl_delivery_status_res'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gigl_delivery_status_res'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gigl_delivery_order_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gigl_delivery_order_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gigl_delivery_order_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gigl_delivery_order_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gigl_delivery_tracking_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gigl_delivery_tracking_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gigl_delivery_tracking_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gigl_delivery_tracking_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gigl_delivery_order_details_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gigl_delivery_order_details_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gigl_delivery_order_details_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gigl_delivery_order_details_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gigl_state_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gigl_state_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gigl_state_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gigl_state_value'"
