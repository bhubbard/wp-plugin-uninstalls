-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('booking_appointment_email_data', 'booking_appointment_settings_data', 'booking_appointment_configuration', 'booking_appointment_payments_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('managetoplevel_page_bookings_tablecolumnshidden', 'managetoplevel_page_holidays_tablecolumnshidden');
DELETE FROM wp_usermeta WHERE meta_key IN ('managetoplevel_page_bookings_tablecolumnshidden', 'managetoplevel_page_holidays_tablecolumnshidden');
DELETE FROM wp_termmeta WHERE meta_key IN ('managetoplevel_page_bookings_tablecolumnshidden', 'managetoplevel_page_holidays_tablecolumnshidden');
DELETE FROM wp_commentmeta WHERE meta_key IN ('managetoplevel_page_bookings_tablecolumnshidden', 'managetoplevel_page_holidays_tablecolumnshidden');

