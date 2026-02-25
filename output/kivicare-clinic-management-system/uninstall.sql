-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kivicare_settings', 'kiviCare_onesignal_config', 'sms_config_data', 'whatsapp_config_data', 'kc_setup_wizard_completed', 'setup_step_1', 'clinic_setup_wizard', 'setup_step_4', 'kivicare_session_first_time', 'kc_setup_wizard_completed_steps', 'kivicare_widget_login_page', 'kivicare_appointment_page', 'kivicare_export_logs', 'kivicare_dashboard_theme', 'kivicare_dashboard_layout', 'kivicare_sidebar_type', 'kivicare_navbar_color', 'kivicare_sidebar_color', 'kivicare_sidebar_active_style', 'kivicare_enable_rtl', 'kivicare_enable_dark_mode', 'kivicare_fluid_layout', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%widgetSetting';
DELETE FROM wp_options WHERE option_name LIKE '%widget_order_list';
DELETE FROM wp_options WHERE option_name LIKE '%is_appointment_widget_migrated';
DELETE FROM wp_options WHERE option_name LIKE '%default_telemed_provider';
DELETE FROM wp_options WHERE option_name LIKE '%zoom_telemed_setting';
DELETE FROM wp_options WHERE option_name LIKE '%razorpay_setting';
DELETE FROM wp_options WHERE option_name LIKE '%enocunter_modules';
DELETE FROM wp_options WHERE option_name LIKE '%zoom_telemed_server_to_server_oauth_status';
DELETE FROM wp_options WHERE option_name LIKE '%is_email_working';
DELETE FROM wp_options WHERE option_name LIKE '%modules';
DELETE FROM wp_options WHERE option_name LIKE 'kivicare_email_key_%';
DELETE FROM wp_options WHERE option_name LIKE 'kivicare_clinic_notifications_enabled_%';
DELETE FROM wp_options WHERE option_name LIKE 'kivicare_notification_history_%';
DELETE FROM wp_options WHERE option_name LIKE '%version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kivicare_user_role', 'google_cal_access_token', 'telemed_type', 'mobile_number', 'patient_unique_id', 'first_name', 'last_name', '_source_url', 'basic_data', 'clinic_id', 'clinic_admin_profile_image', 'kc_user_preferences', 'locale', 'patient_profile_image', 'speciality', 'doctor_profile_image', 'doctor_description', 'doctor_signature', 'receptionist_profile_image', 'status', 'kiviCare_zoom_telemed_connect', 'zoom_server_to_server_oauth_config_data', 'kiviCare_google_meet_connect', 'country_calling_code', 'content_sid', 'contact_number', 'patient_added_by', '_pronamic_payment_status', '_pronamic_payment_transaction_id', 'kivicare_appointment_id', 'kivicare_doctor_id', 'kivicare_widget_type', 'kivicare_service_id', '_payment_method_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('kivicare_user_role', 'google_cal_access_token', 'telemed_type', 'mobile_number', 'patient_unique_id', 'first_name', 'last_name', '_source_url', 'basic_data', 'clinic_id', 'clinic_admin_profile_image', 'kc_user_preferences', 'locale', 'patient_profile_image', 'speciality', 'doctor_profile_image', 'doctor_description', 'doctor_signature', 'receptionist_profile_image', 'status', 'kiviCare_zoom_telemed_connect', 'zoom_server_to_server_oauth_config_data', 'kiviCare_google_meet_connect', 'country_calling_code', 'content_sid', 'contact_number', 'patient_added_by', '_pronamic_payment_status', '_pronamic_payment_transaction_id', 'kivicare_appointment_id', 'kivicare_doctor_id', 'kivicare_widget_type', 'kivicare_service_id', '_payment_method_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('kivicare_user_role', 'google_cal_access_token', 'telemed_type', 'mobile_number', 'patient_unique_id', 'first_name', 'last_name', '_source_url', 'basic_data', 'clinic_id', 'clinic_admin_profile_image', 'kc_user_preferences', 'locale', 'patient_profile_image', 'speciality', 'doctor_profile_image', 'doctor_description', 'doctor_signature', 'receptionist_profile_image', 'status', 'kiviCare_zoom_telemed_connect', 'zoom_server_to_server_oauth_config_data', 'kiviCare_google_meet_connect', 'country_calling_code', 'content_sid', 'contact_number', 'patient_added_by', '_pronamic_payment_status', '_pronamic_payment_transaction_id', 'kivicare_appointment_id', 'kivicare_doctor_id', 'kivicare_widget_type', 'kivicare_service_id', '_payment_method_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kivicare_user_role', 'google_cal_access_token', 'telemed_type', 'mobile_number', 'patient_unique_id', 'first_name', 'last_name', '_source_url', 'basic_data', 'clinic_id', 'clinic_admin_profile_image', 'kc_user_preferences', 'locale', 'patient_profile_image', 'speciality', 'doctor_profile_image', 'doctor_description', 'doctor_signature', 'receptionist_profile_image', 'status', 'kiviCare_zoom_telemed_connect', 'zoom_server_to_server_oauth_config_data', 'kiviCare_google_meet_connect', 'country_calling_code', 'content_sid', 'contact_number', 'patient_added_by', '_pronamic_payment_status', '_pronamic_payment_transaction_id', 'kivicare_appointment_id', 'kivicare_doctor_id', 'kivicare_widget_type', 'kivicare_service_id', '_payment_method_title');

