#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'humera_job_form_settings'
wp option delete 'humera_smtp_settings'

# Clear Cron Jobs
wp cron event delete 'humera_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_humera_job_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_humera_job_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_humera_job_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_humera_job_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_humera_job_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_humera_job_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_humera_job_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_humera_job_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_applicant_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_applicant_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_applicant_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_applicant_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_applicant_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_applicant_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_applicant_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_applicant_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_applicant_cv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_applicant_cv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_applicant_cv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_applicant_cv'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_applied_for'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_applied_for'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_applied_for'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_applied_for'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_humera_application_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_humera_application_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_humera_application_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_humera_application_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_humera_job_salary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_humera_job_salary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_humera_job_salary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_humera_job_salary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_humera_job_deadline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_humera_job_deadline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_humera_job_deadline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_humera_job_deadline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_humera_job_application_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_humera_job_application_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_humera_job_application_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_humera_job_application_email'"
