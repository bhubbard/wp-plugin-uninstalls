#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dls_sus_email_from'
wp option delete 'dls_sus_detailed_errors'
wp option delete 'fdsus_disabled_roles'
wp option delete 'dls_sus_recaptcha_private_key'
wp option delete 'dls_sus_email_subject'
wp option delete 'dls_sus_custom_task_fields'
wp option delete 'dls_sus_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_alert_recipient'"
wp option delete 'dls_sus_sheet_slug'
wp option delete 'dls_sus_hide_address'
wp option delete 'dls_sus_db_version_type'
wp option delete 'fdsus_disable_signup_link_hash'
wp option delete 'fdsus_signup_link_hash'
wp option delete 'dls_sus_roles'
wp option delete 'dls_sus_sheet_order'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dls_sus_text_%'"
wp option delete 'dls_sus_signup_receipt'
wp option delete 'dls_sus_display_all'
wp option delete 'dls_sus_disable_user_autopopulate'
wp option delete 'dls_sus_disable_honeypot'
wp option delete 'dls_sus_deactivate_email_validation'
wp option delete 'dls_sus_disable_captcha'
wp option delete 'dls_sus_recaptcha'
wp option delete 'dls_sus_recaptcha_version'
wp option delete 'fdsus_enable_confirmation_email'
wp option delete 'fdsus_enable_removal_confirmation_email'
wp option delete 'fdsus_cache_clear_on_signup'
wp option delete 'dls_sus_hide_email'
wp option delete 'dls_sus_hide_phone'
wp option delete 'dls_sus_optional_phone'
wp option delete 'dls_sus_optional_address'
wp option delete 'fdsus_optional_email'
wp option delete 'dls_sus_recaptcha_public_key'

# Delete Transients
wp transient delete 'dlssus_migration_running'
wp transient delete 'dlssus_migration_timeout_rerun_count'
wp transient delete 'dlssus_flush_rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_admin_notices' OR option_name LIKE '_site_transient_%_admin_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_flush_rewrite_rules' OR option_name LIKE '_site_transient_%_flush_rewrite_rules'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_migration_timeout_rerun_count' OR option_name LIKE '_site_transient_%_migration_timeout_rerun_count'"

# Clear Cron Jobs
wp cron event delete 'fdsus_dbupdate_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlssus_id_v2_0'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlssus_id_v2_0'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlssus_id_v2_0'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlssus_id_v2_0'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlssus_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlssus_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlssus_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlssus_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlssusdlssus_use_task_dates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlssusdlssus_use_task_dates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlssusdlssus_use_task_dates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlssusdlssus_use_task_dates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlssus_sheet_bcc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlssus_sheet_bcc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlssus_sheet_bcc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlssus_sheet_bcc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlssus_optional_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlssus_optional_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlssus_optional_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlssus_optional_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlssus_optional_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlssus_optional_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlssus_optional_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlssus_optional_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlssus_hide_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlssus_hide_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlssus_hide_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlssus_hide_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlssus_hide_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlssus_hide_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlssus_hide_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlssus_hide_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlssus_hide_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlssus_hide_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlssus_hide_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlssus_hide_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlssus_compact_signups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlssus_compact_signups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlssus_compact_signups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlssus_compact_signups'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlssus_use_task_checkboxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlssus_use_task_checkboxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlssus_use_task_checkboxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlssus_use_task_checkboxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlssus_task_signup_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlssus_task_signup_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlssus_task_signup_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlssus_task_signup_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlssus_contiguous_task_signup_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlssus_contiguous_task_signup_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlssus_contiguous_task_signup_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlssus_contiguous_task_signup_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlssus_sheet_reminder_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlssus_sheet_reminder_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlssus_sheet_reminder_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlssus_sheet_reminder_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlssus_sheet_email_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlssus_sheet_email_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlssus_sheet_email_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlssus_sheet_email_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlssus_sheet_email_conf_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlssus_sheet_email_conf_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlssus_sheet_email_conf_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlssus_sheet_email_conf_message'"
