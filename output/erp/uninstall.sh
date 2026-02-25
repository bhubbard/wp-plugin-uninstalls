#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_erp_admin_menu'
wp option delete '_erp_adminbar_menu'
wp option delete 'erp_setup_wizard_ran'
wp option delete 'erp_settings_erp-email_imap'
wp option delete 'erp_users_to_contacts_import_attempt'
wp option delete 'erp_modules'
wp option delete 'erp_settings_general'
wp option delete 'include_project_manager'
wp option delete 'include_wemail'
wp option delete 'erp_settings_erp-email_general'
wp option delete 'wp_erp_db_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'erp_settings_erp-integration'
wp option delete 'weforms_upsell_dismiss'
wp option delete '_weforms_aff_ref'
wp option delete 'wperp_offer_notice'
wp option delete 'erp_settings_erp-email_mailgun'
wp option delete 'erp_settings_erp-email_wpmail'
wp option delete 'erp_settings_erp-email_smtp'
wp option delete 'policy_migrate_data_1_6_0'
wp option delete 'erp_settings_erp-crm_subscription'
wp option delete 'erp_settings_erp-crm_email_connect_gmail'
wp option delete 'erp_settings_erp-crm_email_connect_imap'
wp option delete 'wp_erp_version'
wp option delete 'wp_erp_install_date'
wp option delete 'erp_email_settings_employee-welcome'
wp option delete 'erp_email_settings_new-leave-request'
wp option delete 'erp_email_settings_approved-leave-request'
wp option delete 'erp_email_settings_rejected-leave-request'
wp option delete 'erp_email_settings_new-task-assigned'
wp option delete 'erp_email_settings_new-contact-assigned'
wp option delete 'erp_email_settings_hiring-anniversary-wish'
wp option delete 'erp_email_settings_govt-holiday-reminder'
wp option delete 'erp_email_settings_transectional-email'
wp option delete 'erp_email_settings_transectional-email-payments'
wp option delete 'erp_email_settings_transectional-email-purchase'
wp option delete 'erp_email_settings_transectional-email-estimate'
wp option delete 'erp_email_settings_transectional-email-purchase-order'
wp option delete 'erp_email_settings_transectional-email-pay-purchase'
wp option delete 'erp_acct_new_ledgers'
wp option delete 'erp_email_background_color'
wp option delete 'erp_email_body_background_color'
wp option delete 'erp_email_base_color'
wp option delete 'erp_email_text_color'
wp option delete 'erp-employee-fields'
wp option delete 'erp-contact-fields'
wp option delete 'erp-company-fields'
wp option delete 'erp-customer-fields'
wp option delete 'erp-vendor-fields'
wp option delete 'erp_gmail_authenticated_email'
wp option delete 'pdf-notice-dismissed'
wp option delete 'wperp_crm_contact_forms'
wp option delete 'ninja_forms_version'
wp option delete 'erp_gsync_historyid'
wp option delete 'erp_google_access_token'
wp option delete 'erp_settings_erp-email_gmail'
wp option delete 'wp_erp_inbound_email_count'
wp option delete 'erp_crm_inbound_emails_last_checked'
wp option delete 'erp_users_to_contacts_import_exists'
wp option delete 'erp_pro_multilevel_approval'
wp option delete 'enable_extra_leave'
wp option delete 'enable_auto_leave_policy_assignment_on_type_change'
wp option delete 'erp_hrm_remove_wp_user'
wp option delete 'erp_pro_sandwich_leave'
wp option delete 'mon'
wp option delete 'tue'
wp option delete 'wed'
wp option delete 'thu'
wp option delete 'fri'
wp option delete 'sat'
wp option delete 'sun'
wp option delete 'erp_hrm_hide_pay_rate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete '_erp_activation_redirect'
wp transient delete '_pm_setup_page_redirect'
wp transient delete 'wperp_pro_addons'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'wperp_promo_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__erp_crm_seed_%' OR option_name LIKE '_site_transient__erp_crm_seed_%'"
wp transient delete 'erp_customer_countries_widget'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__erp_seed_%' OR option_name LIKE '_site_transient__erp_seed_%'"

# Clear Cron Jobs
wp cron event delete 'erp_hr_policy_schedule'
wp cron event delete 'erp_crm_notification_schedule'
wp cron event delete 'erp_per_minute_scheduled_events'
wp cron event delete 'erp_daily_scheduled_events'
wp cron event delete 'erp_weekly_scheduled_events'
wp cron event delete 'erp_crm_inbound_email_scheduled_events'
wp cron event delete 'erp_hr_schedule_announcement_email'

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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_erp_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_erp_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_erp_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_erp_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'work_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'work_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'work_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'work_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'company'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_owner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'erp_hr_disable_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'erp_hr_disable_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'erp_hr_disable_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'erp_hr_disable_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'erp_last_removed_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'erp_last_removed_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'erp_last_removed_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'erp_last_removed_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_erp_hr_termination'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_erp_hr_termination'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_erp_hr_termination'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_erp_hr_termination'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_training_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_training_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_training_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_training_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_training_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_training_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_training_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_training_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_training_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_training_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_training_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_training_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_training_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_training_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_training_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_training_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'erp_employee_training'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'erp_employee_training'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'erp_employee_training'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'erp_employee_training'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'erp_training_completed_employee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'erp_training_completed_employee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'erp_training_completed_employee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'erp_training_completed_employee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'erp_training_incompleted_employee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'erp_training_incompleted_employee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'erp_training_incompleted_employee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'erp_training_incompleted_employee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'leave_document_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'leave_document_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'leave_document_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'leave_document_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_url'"
