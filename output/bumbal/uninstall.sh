#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bumbal_multiday_active'
wp option delete 'bumbal_timeslot_position'
wp option delete 'bumbal_instance'
wp option delete 'bumbal_apikey'
wp option delete 'bumbal_status_send'
wp option delete 'bumbal_custom_send_activity_hook'
wp option delete 'bumbal_timeslot_hook'
wp option delete 'bumbal_ACF_plugin'
wp option delete 'bumbal_external_datamapper'
wp option delete 'bumbal_shop_name'
wp option delete 'bumbal_timeslots_form'
wp option delete 'bumbal_multiday_start_time'
wp option delete 'bumbal_multiday_end_time'
wp option delete 'bumbal_multiday_send_invite'
wp option delete 'bumbal_multiday_send_reminder'
wp option delete 'bumbal_multiday_send_confirmation'
wp option delete 'bumbal_multiday_send_planned'
wp option delete 'bumbal_multiday_send_eta'
wp option delete 'bumbal_multiday_send_executed'
wp option delete 'bumbal_multiday_send_cancelled'
wp option delete 'bumbal_timeslot_thankyou_text'
wp option delete 'bumbal_send_invite_after_error'
wp option delete 'bumbal_status_change'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bumbal_shipping_instance_%'"
wp option delete 'bumbal_ignore_shippingclass'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bumbal_shipping_class_%'"
wp option delete 'bumbal_send_invite'
wp option delete 'bumbal_send_reminder'
wp option delete 'bumbal_send_confirmation'
wp option delete 'bumbal_send_planned'
wp option delete 'bumbal_send_eta'
wp option delete 'bumbal_send_executed'
wp option delete 'bumbal_send_cancelled'
wp option delete 'bumbal_send_packagelines_as_notes'
wp option delete 'bumbal_timeslot_text'
wp option delete 'bumbal_timeslots_show_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BumbalTimeSlotResponse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BumbalTimeSlotResponse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BumbalTimeSlotResponse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BumbalTimeSlotResponse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BumbalStatus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BumbalStatus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BumbalStatus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BumbalStatus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BumbalRoute'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BumbalRoute'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BumbalRoute'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BumbalRoute'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BumbalRetrieveTimeSlotError'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BumbalRetrieveTimeSlotError'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BumbalRetrieveTimeSlotError'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BumbalRetrieveTimeSlotError'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BumbalAPIresponse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BumbalAPIresponse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BumbalAPIresponse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BumbalAPIresponse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BumbalAPIcall'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BumbalAPIcall'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BumbalAPIcall'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BumbalAPIcall'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BumbalApiError'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BumbalApiError'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BumbalApiError'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BumbalApiError'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MultiDayResponse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MultiDayResponse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MultiDayResponse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MultiDayResponse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MultiDayCall'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MultiDayCall'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MultiDayCall'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MultiDayCall'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BumbalCancelOrderError'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BumbalCancelOrderError'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BumbalCancelOrderError'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BumbalCancelOrderError'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BumbalDeleteOrderError'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BumbalDeleteOrderError'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BumbalDeleteOrderError'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BumbalDeleteOrderError'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bumbal_shipping_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bumbal_shipping_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bumbal_shipping_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bumbal_shipping_time'"
