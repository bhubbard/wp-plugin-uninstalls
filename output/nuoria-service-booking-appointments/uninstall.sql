-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Nuoria_Service_Booking_Appointments_settings', 'Nuoria_Service_Booking_Appointments_db_version', 'Nuoria_Service_Booking_Appointments_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone');

