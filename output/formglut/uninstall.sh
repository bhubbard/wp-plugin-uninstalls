#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'formglut_global_modules_status'
wp option delete '_formglut_global_form_settings'
wp option delete '_formglut_security_salt'
wp option delete '__formglut_global_form_settings'
wp option delete '_formglut_installed_version'
wp option delete 'formglut_entry_details_migrated'
wp option delete 'formglut_db_formglut_logs_added'
wp option delete 'formglut_scheduled_actions_migrated'
wp option delete '_fg_ins_by'
wp option delete '_formglut_hCaptcha_keys_status'
wp option delete '_formglut_reCaptcha_keys_status'
wp option delete '_formglut_turnstile_keys_status'
wp option delete '_formglut_form_permission'
wp option delete '_formglut_reCaptcha_details'
wp option delete '_formglut_hCaptcha_details'
wp option delete '_formglut_turnstile_details'
wp option delete '_formglut_mailchimp_details'
wp option delete '__formglut_payment_module_settings'
wp option delete '_formglut_email_report_summary'
wp option delete '__fg_imorted_forms_map'
wp option delete 'recently_activated'
wp option delete '_formglut_ins_by'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'formglut_do_scheduled_tasks'
wp cron event delete 'formglut_do_email_report_scheduled_tasks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_has_formglut'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_has_formglut'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_has_formglut'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_has_formglut'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_formg_forms_has_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_formg_forms_has_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_formg_forms_has_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_formg_forms_has_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'formglut_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'formglut_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'formglut_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'formglut_dismissed_notice_%'"
