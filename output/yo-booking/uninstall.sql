-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yo_booking_customer_pending_appointment_settings', 'yo_booking_company_name', 'yo_booking_company_address', 'yo_booking_company_phone', 'yo_booking_company_email', 'yo_booking_company_website', 'yo_booking_email_footer_text', 'yo_booking_company_logo', 'yo_booking_appearance_base_color', 'yo_booking_appearance_text_color', 'yo_booking_email_from_name', 'yo_booking_email_from_address', 'yo_booking_customer_confirmed_appointment_settings', 'yo_booking_customer_completed_appointment_settings', 'yo_booking_customer_missed_appointment_settings', 'yo_booking_customer_updated_appointment_settings', 'yo_booking_customer_reminder_settings', 'yo_booking_new_appointment_settings', 'yo_booking_cancelled_appointment_settings', 'yo_booking_missed_appointment_settings', 'yo_booking_appearance_highlight_color', 'yo_booking_business_hours', 'yo_booking_country_availability', 'yo_booking_specific_countries', 'yo_booking_time_slot_length', 'yo_booking_booking_lead_time', 'yo_booking_booking_period_available', 'yo_booking_default_status', 'yo_booking_minimum_cancellation_time', 'yo_booking_required_contact', 'yo_booking_service_category', 'yo_booking_staff_group', 'yoohw_settings_disable_menu', 'yo_booking_premium_license_status', 'yo_booking_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yo_booking_activation_time', 'yo_booking_never_show_again', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('yo_booking_activation_time', 'yo_booking_never_show_again', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('yo_booking_activation_time', 'yo_booking_never_show_again', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yo_booking_activation_time', 'yo_booking_never_show_again', 'first_name', 'last_name');

