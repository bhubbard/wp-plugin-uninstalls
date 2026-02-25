-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lockme_settings', 'lockme_url_key', 'lockme_oauth2_state', 'lockme_oauth2_token', 'lockme_db_ver', 'lockme_amelia', 'lockme_app', 'lockme_booked', 'booked_defaults', 'lockme_bookingpress', 'lockme_bookly', 'lockme_cpabc', 'lockme_dopbsp', 'lockme_easyapp', 'lockme_ezscm', 'lockme_wpb', 'lockme_wpdevart', 'lockme_woo');
DELETE FROM wp_options WHERE option_name LIKE 'booked_defaults_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_appointment_timestamp', '_appointment_guest_name', '_appointment_guest_email', '_appointment_timeslot', '_appointment_source', '_cf_meta_value', 'booked_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_appointment_timestamp', '_appointment_guest_name', '_appointment_guest_email', '_appointment_timeslot', '_appointment_source', '_cf_meta_value', 'booked_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_appointment_timestamp', '_appointment_guest_name', '_appointment_guest_email', '_appointment_timeslot', '_appointment_source', '_cf_meta_value', 'booked_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_appointment_timestamp', '_appointment_guest_name', '_appointment_guest_email', '_appointment_timeslot', '_appointment_source', '_cf_meta_value', 'booked_phone');

