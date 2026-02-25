#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clisyc_client_list_custom_field_column'
wp option delete 'clisyc_standard_schedules_by_dimension'
wp option delete 'clisyc_standard_schedule_calendar_start_time'
wp option delete 'clisyc_standard_schedule_calendar_end_time'
wp option delete 'clisyc_audit_log_retention_days'
wp option delete 'clisyc_anonymize_external_sync'
wp option delete 'clisyc_hipaa_mode_enabled'
wp option delete 'clisyc_manager_edit_page_id'
wp option delete 'clisyc_wc_appointment_product_id'
wp option delete 'clisyc_wc_integration_enabled'
wp option delete 'clisyc_primary_service_dimension_key'
wp option delete 'clisyc_email_from_name'
wp option delete 'clisyc_email_from_address'
wp option delete 'clisyc_calendar_show_overview_availability'
wp option delete 'clisyc_custom_fields_order'
wp option delete 'clisyc_sms_credentials'
wp option delete 'clisyc_audit_logging_enabled'
wp option delete 'clisyc_min_stay_nights'
wp option delete 'clisyc_max_stay_nights'
wp option delete 'clisyc_allowed_checkin_days'
wp option delete 'clisyc_allowed_checkout_days'
wp option delete 'clisyc_currency_symbol'
wp option delete 'clisyc_custom_booking_fields'
wp option delete 'clisyc_booking_success_page'
wp option delete 'clisyc_delete_user_data_on_uninstall'
wp option delete 'clisyc_dimension_registry'

# Delete Transients
wp transient delete 'clisyc_admin_feedback'
wp transient delete 'clisyc_activation_redirect'
wp transient delete 'clisyc_custom_field_feedback'
wp transient delete 'clisyc_convert_tz_notice_shown'
wp transient delete 'clisyc_dashboard_widget_stats'
wp transient delete 'clisyc_blocked_periods_feedback'
wp transient delete 'clisyc_testing_feedback'
wp transient delete 'clisyc_automation_feedback'
wp transient delete 'clisyc_cron_last_run_stats'
wp transient delete 'clisyc_manage_slots_feedback'
wp transient delete 'clisyc_standard_schedule_feedback'
wp transient delete 'clisyc_import_export_feedback'
wp transient delete 'clisyc_failed_notifications_count'
wp transient delete 'clisyc_all_cpts_cache'
wp transient delete 'clisyc_manager_edit_feedback'
wp transient delete 'clisyc_booking_feedback_success'
wp transient delete 'clisyc_booking_feedback_error'
wp transient delete 'clisyc_booking_feedback_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_clisyc_manager_edit_feedback_%' OR option_name LIKE '_site_transient_clisyc_manager_edit_feedback_%'"
wp transient delete 'clisyc_booking_posted_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_clisyc_pending_appt_%' OR option_name LIKE '_site_transient_clisyc_pending_appt_%'"
wp transient delete 'clisyc_registration_errors'
wp transient delete 'clisyc_registration_posted_data'

# Clear Cron Jobs
wp cron event delete 'clisyc_audit_log_cleanup'
wp cron event delete 'clisyc_frequent_maintenance_tasks'
wp cron event delete 'clisyc_cron_charge_due_payments'
wp cron event delete 'clisyc_cron_send_reminders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'clisyc_employee_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'clisyc_employee_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'clisyc_employee_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'clisyc_employee_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'clisyc_slot_dimensions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'clisyc_slot_dimensions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'clisyc_slot_dimensions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'clisyc_slot_dimensions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_slot_identifier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_slot_identifier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_slot_identifier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_slot_identifier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_custom_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_custom_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_custom_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_custom_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_stripe_failure_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_stripe_failure_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_stripe_failure_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_stripe_failure_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_attendee_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_attendee_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_attendee_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_attendee_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_clisyc_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_clisyc_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_clisyc_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_clisyc_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'clisyc_sms_opt_out'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'clisyc_sms_opt_out'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'clisyc_sms_opt_out'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'clisyc_sms_opt_out'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_credits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_credits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_credits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_credits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_wc_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_wc_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_wc_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_wc_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_addon_calc_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_addon_calc_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_addon_calc_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_addon_calc_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_additional_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_additional_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_additional_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_additional_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_stripe_event_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_stripe_event_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_stripe_event_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_stripe_event_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_buffer_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_buffer_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_buffer_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_buffer_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_min_stay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_min_stay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_min_stay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_min_stay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_max_stay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_max_stay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_max_stay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_max_stay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'clisyc_template_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'clisyc_template_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'clisyc_template_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'clisyc_template_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'clisyc_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'clisyc_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'clisyc_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'clisyc_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'clisyc_channels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'clisyc_channels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'clisyc_channels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'clisyc_channels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_client_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_client_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_client_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_client_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clisyc_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clisyc_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clisyc_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clisyc_subtitle'"
