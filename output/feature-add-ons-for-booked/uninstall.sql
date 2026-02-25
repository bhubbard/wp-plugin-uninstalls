-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('booked_hide_end_times', 'booked_custom_fields', 'booked_require_guest_phone', 'booked_require_guest_email_address', 'booked_approval_email_content', 'booked_approval_email_subject', 'booked_registration_email_content', 'booked_registration_email_subject', 'booked_registration_name_requirements', 'booked_booking_type');
DELETE FROM wp_options WHERE option_name LIKE 'booked_custom_fields_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_appointment_timestamp', '_appointment_timeslot', '_appointment_user', 'first_name', 'last_name', '_appointment_guest_name', '_appointment_guest_surname', '_appointment_title', '_appointment_guest_email', '_cf_meta_value', 'nickname', 'phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_appointment_timestamp', '_appointment_timeslot', '_appointment_user', 'first_name', 'last_name', '_appointment_guest_name', '_appointment_guest_surname', '_appointment_title', '_appointment_guest_email', '_cf_meta_value', 'nickname', 'phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_appointment_timestamp', '_appointment_timeslot', '_appointment_user', 'first_name', 'last_name', '_appointment_guest_name', '_appointment_guest_surname', '_appointment_title', '_appointment_guest_email', '_cf_meta_value', 'nickname', 'phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_appointment_timestamp', '_appointment_timeslot', '_appointment_user', 'first_name', 'last_name', '_appointment_guest_name', '_appointment_guest_surname', '_appointment_title', '_appointment_guest_email', '_cf_meta_value', 'nickname', 'phone');

