-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bed_booking_access_token', 'bed_booking_calendar_id', 'bed_booking_user', 'bed_booking_object', 'bed_booking_widget_settings', 'bed_booking_license', 'bed_booking_rooms');

