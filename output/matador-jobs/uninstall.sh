#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bullhorn_api_credentials'
wp option delete 'matador_advanced_applications'
wp option delete 'matador_activated'
wp option delete 'matador_ET_last_phone_home'
wp option delete 'bullhorn_settings'
wp option delete 'bullhorn_api_access'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_matador_import_categories_job_%' OR option_name LIKE '_site_transient_matador_import_categories_job_%'"
wp transient delete 'matador_extension_leads_enabled'
wp transient delete 'matador_bullhorn_Candidate_consentMgmt_object'
wp transient delete 'matador_upgrade_email'
wp transient delete 'matador_activity_log_delete_logs'
wp transient delete 'matador_ET_daily_instance_report'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'matador_job_sync_now'
wp cron event delete 'matador_sync'
wp cron event delete 'matador_sync_applications'
wp cron event delete 'matador_application_sync'
wp cron event delete 'matador_job_sync'
wp cron event delete 'matador_sync_continue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_matador_source_date_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_matador_source_date_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_matador_source_date_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_matador_source_date_modified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_matador_source_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_matador_source_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_matador_source_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_matador_source_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_matador_synced_meta_keys'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_matador_synced_meta_keys'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_matador_synced_meta_keys'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_matador_synced_meta_keys'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bullhorn_street'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bullhorn_street'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bullhorn_street'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bullhorn_street'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bullhorn_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bullhorn_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bullhorn_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bullhorn_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bullhorn_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bullhorn_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bullhorn_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bullhorn_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bullhorn_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bullhorn_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bullhorn_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bullhorn_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bullhorn_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bullhorn_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bullhorn_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bullhorn_zip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bullhorn_job_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bullhorn_job_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bullhorn_job_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bullhorn_job_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'job_general_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'job_general_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'job_general_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'job_general_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'bullhorn_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'bullhorn_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'bullhorn_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bullhorn_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isRemote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isRemote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isRemote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isRemote'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'salary_low_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'salary_low_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'salary_low_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'salary_low_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'salary_high_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'salary_high_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'salary_high_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'salary_high_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'salary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'salary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'salary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'salary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'salaryUnit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'salaryUnit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'salaryUnit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'salaryUnit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'salary_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'salary_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'salary_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'salary_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jsonld'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jsonld'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jsonld'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jsonld'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_matador_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_matador_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_matador_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_matador_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'responseUser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'responseUser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'responseUser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'responseUser'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'assignedUsers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'assignedUsers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'assignedUsers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'assignedUsers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_application_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_application_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_application_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_application_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bullhorn_candidate_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bullhorn_candidate_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bullhorn_candidate_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bullhorn_candidate_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bullhorn_job_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bullhorn_job_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bullhorn_job_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bullhorn_job_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isHybrid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isHybrid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isHybrid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isHybrid'"
