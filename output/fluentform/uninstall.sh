#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fluentform_global_modules_status'
wp option delete '_fluentform_global_form_settings'
wp option delete '_fluentform_security_salt'
wp option delete '_fluentform_installed_version'
wp option delete 'fluentform_entry_details_migrated'
wp option delete 'fluentform_db_fluentform_logs_added'
wp option delete 'fluentform_scheduled_actions_migrated'
wp option delete '_ff_ins_by'
wp option delete '_fluentform_hCaptcha_keys_status'
wp option delete '_fluentform_reCaptcha_keys_status'
wp option delete '_fluentform_turnstile_keys_status'
wp option delete '_fluentform_reCaptcha_details'
wp option delete '_fluentform_form_permission'
wp option delete '_fluentform_cleantalk_details'
wp option delete '_fluentform_default_style_template'
wp option delete '_fluentform_hCaptcha_details'
wp option delete '_fluentform_turnstile_details'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fluentform_payment_settings_%'"
wp option delete '__fluentform_payment_module_settings'
wp option delete 'fluentform_payment_settings_stripe'
wp option delete '_fluentform_double_optin_settings'
wp option delete '_fluentform_mailchimp_details'
wp option delete '_fluentform_email_report_summary'
wp option delete '__ff_imorted_forms_map'

# Delete Transients
wp transient delete 'fluentform_dashboard_stats_v1'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'fluentform_do_scheduled_tasks'
wp cron event delete 'fluentform_do_email_report_scheduled_tasks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_has_fluentform'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_has_fluentform'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_has_fluentform'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_has_fluentform'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fluent_forms_allowed_forms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fluent_forms_allowed_forms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fluent_forms_allowed_forms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fluent_forms_allowed_forms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fluent_forms_has_specific_forms_permission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fluent_forms_has_specific_forms_permission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fluent_forms_has_specific_forms_permission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fluent_forms_has_specific_forms_permission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fluent_forms_has_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fluent_forms_has_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fluent_forms_has_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fluent_forms_has_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
