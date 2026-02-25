-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_roles_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('service_is_work_complete', 'service_additional_notes', 'service_customer', 'customer_service_phone', 'customer_service_address', 'service_assigned_to', 'technician_service_phone', 'service_booked_on', 'service_booked_on_time_hr', 'service_booked_on_time_min', 'service_latitude', 'service_longitude');
DELETE FROM wp_usermeta WHERE meta_key IN ('service_is_work_complete', 'service_additional_notes', 'service_customer', 'customer_service_phone', 'customer_service_address', 'service_assigned_to', 'technician_service_phone', 'service_booked_on', 'service_booked_on_time_hr', 'service_booked_on_time_min', 'service_latitude', 'service_longitude');
DELETE FROM wp_termmeta WHERE meta_key IN ('service_is_work_complete', 'service_additional_notes', 'service_customer', 'customer_service_phone', 'customer_service_address', 'service_assigned_to', 'technician_service_phone', 'service_booked_on', 'service_booked_on_time_hr', 'service_booked_on_time_min', 'service_latitude', 'service_longitude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('service_is_work_complete', 'service_additional_notes', 'service_customer', 'customer_service_phone', 'customer_service_address', 'service_assigned_to', 'technician_service_phone', 'service_booked_on', 'service_booked_on_time_hr', 'service_booked_on_time_min', 'service_latitude', 'service_longitude');

