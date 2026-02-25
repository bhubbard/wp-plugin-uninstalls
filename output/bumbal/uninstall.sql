-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bumbal_multiday_active', 'bumbal_timeslot_position', 'bumbal_instance', 'bumbal_apikey', 'bumbal_status_send', 'bumbal_custom_send_activity_hook', 'bumbal_timeslot_hook', 'bumbal_ACF_plugin', 'bumbal_external_datamapper', 'bumbal_shop_name', 'bumbal_timeslots_form', 'bumbal_multiday_start_time', 'bumbal_multiday_end_time', 'bumbal_multiday_send_invite', 'bumbal_multiday_send_reminder', 'bumbal_multiday_send_confirmation', 'bumbal_multiday_send_planned', 'bumbal_multiday_send_eta', 'bumbal_multiday_send_executed', 'bumbal_multiday_send_cancelled', 'bumbal_timeslot_thankyou_text', 'bumbal_send_invite_after_error', 'bumbal_status_change', 'bumbal_ignore_shippingclass', 'bumbal_send_invite', 'bumbal_send_reminder', 'bumbal_send_confirmation', 'bumbal_send_planned', 'bumbal_send_eta', 'bumbal_send_executed', 'bumbal_send_cancelled', 'bumbal_send_packagelines_as_notes', 'bumbal_timeslot_text', 'bumbal_timeslots_show_time');
DELETE FROM wp_options WHERE option_name LIKE 'bumbal_shipping_instance_%';
DELETE FROM wp_options WHERE option_name LIKE 'bumbal_shipping_class_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('BumbalTimeSlotResponse', 'BumbalStatus', 'BumbalRoute', 'BumbalRetrieveTimeSlotError', 'BumbalAPIresponse', 'BumbalAPIcall', 'BumbalApiError', 'MultiDayResponse', 'MultiDayCall', 'BumbalCancelOrderError', 'BumbalDeleteOrderError', 'bumbal_shipping_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('BumbalTimeSlotResponse', 'BumbalStatus', 'BumbalRoute', 'BumbalRetrieveTimeSlotError', 'BumbalAPIresponse', 'BumbalAPIcall', 'BumbalApiError', 'MultiDayResponse', 'MultiDayCall', 'BumbalCancelOrderError', 'BumbalDeleteOrderError', 'bumbal_shipping_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('BumbalTimeSlotResponse', 'BumbalStatus', 'BumbalRoute', 'BumbalRetrieveTimeSlotError', 'BumbalAPIresponse', 'BumbalAPIcall', 'BumbalApiError', 'MultiDayResponse', 'MultiDayCall', 'BumbalCancelOrderError', 'BumbalDeleteOrderError', 'bumbal_shipping_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('BumbalTimeSlotResponse', 'BumbalStatus', 'BumbalRoute', 'BumbalRetrieveTimeSlotError', 'BumbalAPIresponse', 'BumbalAPIcall', 'BumbalApiError', 'MultiDayResponse', 'MultiDayCall', 'BumbalCancelOrderError', 'BumbalDeleteOrderError', 'bumbal_shipping_time');

