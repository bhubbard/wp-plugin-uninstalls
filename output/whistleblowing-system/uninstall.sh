#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbls_encryption_key'
wp option delete 'wbls_encryption_iv'
wp option delete 'wbls_global_settings'
wp option delete 'wbls_default_forms_created'
wp option delete 'teeny_active'
wp option delete 'wbls_theme_default'
wp option delete 'wbls_trial_popup_shown'
wp option delete 'wbls_license_status'
wp option delete 'wbls-plugin-version'
wp option delete 'wbls_initial_setup_pending'
wp option delete 'wbls_flush_rewrite_rules'
wp option delete 'wbls_install_date'
wp option delete 'wbls_plugin_version'
wp option delete 'wbls-oldForm_id'

# Clear Cron Jobs
wp cron event delete 'license_check_schedule_action'
wp cron event delete 'wbls_purge_old_logs_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbls_field_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbls_field_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbls_field_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbls_field_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbls_email_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbls_email_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbls_email_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbls_email_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbls_form_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbls_form_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbls_form_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbls_form_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbls_fieldNameLastId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbls_fieldNameLastId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbls_fieldNameLastId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbls_fieldNameLastId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbls_form_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbls_form_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbls_form_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbls_form_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbls_form_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbls_form_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbls_form_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbls_form_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbls_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbls_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbls_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbls_theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbls_submission_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbls_submission_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbls_submission_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbls_submission_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbls_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbls_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbls_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbls_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbls_created_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbls_created_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbls_created_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbls_created_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbls_admin_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbls_admin_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbls_admin_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbls_admin_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbls_user_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbls_user_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbls_user_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbls_user_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbls_chat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbls_chat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbls_chat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbls_chat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbls_form_content_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbls_form_content_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbls_form_content_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbls_form_content_backup'"
