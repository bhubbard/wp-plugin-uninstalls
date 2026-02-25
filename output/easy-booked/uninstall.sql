-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abs_enable_zoom', 'abs_custom_fields', 'abs_admin_host_email', 'abs_email_reminder_time', 'abs_user_profile', 'abs_user_register_page', 'abs_user_login', 'abs_user_appointment', 'abs_setting', 'abs_enable_email_appointment_reminder', 'abs_appointment_reminder_contain', 'abs_enable_appointment_confirmation', 'abs_appointment_confirmation_contain', 'abs_enable_appointment_approval', 'abs_appointment_approval_contain', 'abs_enable_admin_email', 'abs_appointment_made_content', 'abs_zoom_account_id', 'abs_zoom_client_id', 'abs_zoom_client_secret', 'duration_zoom', 'zoom_password', 'abs_installed', 'abs_version', 'abs_duration_zoom', 'abs_zoom_password', 'abs_zoom_secret_key', 'abs_zoom_api_key');
DELETE FROM wp_options WHERE option_name LIKE 'abs_calendar_general%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phone_number', 'end_date', 'start_date', 'slot_title', 'slot_id', 'slot_type', 'order_id', 'zoom_join_link', 'email', 'zoom_password', 'phone', 'first_name', 'last_name', 'appointment_id', 'calendar_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('phone_number', 'end_date', 'start_date', 'slot_title', 'slot_id', 'slot_type', 'order_id', 'zoom_join_link', 'email', 'zoom_password', 'phone', 'first_name', 'last_name', 'appointment_id', 'calendar_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('phone_number', 'end_date', 'start_date', 'slot_title', 'slot_id', 'slot_type', 'order_id', 'zoom_join_link', 'email', 'zoom_password', 'phone', 'first_name', 'last_name', 'appointment_id', 'calendar_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phone_number', 'end_date', 'start_date', 'slot_title', 'slot_id', 'slot_type', 'order_id', 'zoom_join_link', 'email', 'zoom_password', 'phone', 'first_name', 'last_name', 'appointment_id', 'calendar_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cmf_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cmf_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cmf_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cmf_%';

