#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wphr_setup_wizard_ran'
wp option delete 'wphr_promotional_offer_notice'
wp option delete 'wphr_settings_wphr-email_general'
wp option delete 'wphr_users_to_contacts_import_attempt'
wp option delete 'wphr_modules'
wp option delete '_wphr_admin_menu'
wp option delete '_wphr_adminbar_menu'
wp option delete 'wphr_settings_general'
wp option delete 'wphr_settings_accounting'
wp option delete 'wphr_users_to_contacts_import_exists'
wp option delete 'wp_wphr_version'
wp option delete 'wp_wphr_db_version'
wp option delete 'wphr_email_settings_employee-welcome'
wp option delete 'wphr_email_settings_new-leave-request'
wp option delete 'wphr_email_settings_approved-leave-request'
wp option delete 'wphr_email_settings_rejected-leave-request'
wp option delete 'wphr_email_settings_new-task-assigned'
wp option delete 'wphr_settings_wphr-crm_subscription'
wp option delete 'wphr_settings_wphr-integration'
wp option delete 'wphr_email_background_color'
wp option delete 'wphr_email_body_background_color'
wp option delete 'wphr_email_base_color'
wp option delete 'wphr_email_text_color'
wp option delete 'wphr_settings_wphr-email_imap'
wp option delete 'wphr_settings_hr-frontend-page'
wp option delete 'wphr-contact-fields'
wp option delete 'wphr-employee-fields'
wp option delete 'wphr_settings_wphr-email_smtp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'mon'
wp option delete 'tue'
wp option delete 'wed'
wp option delete 'thu'
wp option delete 'fri'
wp option delete 'sat'
wp option delete 'sun'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete '_wphr_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'wphr_per_minute_scheduled_events'
wp cron event delete 'wphr_daily_scheduled_events'
wp cron event delete 'wphr_weekly_scheduled_events'
wp cron event delete 'wphr_crm_inbound_email_scheduled_events'
wp cron event delete 'wphr_hr_policy_schedule'
wp cron event delete 'wphr_crm_notification_schedule'
wp cron event delete 'wphr_hr_schedule_announcement_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'street_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'street_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'street_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'street_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'street_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'street_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'street_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'street_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postal_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postal_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postal_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postal_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'receive_mail_for_leaves'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'receive_mail_for_leaves'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'receive_mail_for_leaves'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'receive_mail_for_leaves'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manage_leave_of_employees'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manage_leave_of_employees'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manage_leave_of_employees'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manage_leave_of_employees'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_owner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wphr_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wphr_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wphr_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wphr_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'other'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'other'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'other'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'other'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'photo_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'photo_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'photo_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'photo_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_profile_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_profile_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_profile_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_profile_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wphr_hr_termination'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wphr_hr_termination'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wphr_hr_termination'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wphr_hr_termination'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_announcement_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_announcement_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_announcement_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_announcement_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_announcement_selected_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_announcement_selected_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_announcement_selected_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_announcement_selected_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_announcement_department'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_announcement_department'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_announcement_department'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_announcement_department'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_announcement_designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_announcement_designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_announcement_designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_announcement_designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'additional'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'additional'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'additional'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'additional'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gender'"
