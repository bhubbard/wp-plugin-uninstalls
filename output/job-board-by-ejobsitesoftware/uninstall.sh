#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jbye_options'
wp option delete 'jobboard_options'
wp option delete 'jobboard_jobs_per_page'
wp option delete 'jobboard_enable_applications'
wp option delete 'jobboard_notification_email'
wp option delete 'jobboard_currency'
wp option delete 'jobboard_plugin_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete 'jobboard_requirement_errors'
wp option delete 'jbye_flush_rewrite_rules'
wp option delete 'jbye_plugin_activated'

# Clear Cron Jobs
wp cron event delete 'jobboard_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_salary_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_salary_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_salary_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_salary_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_salary_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_salary_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_salary_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_salary_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_application_deadline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_application_deadline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_application_deadline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_application_deadline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_company_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_company_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_company_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_company_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_founded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_founded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_founded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_founded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_salary_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_salary_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_salary_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_salary_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_skills'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_skills'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_skills'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_skills'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_salary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_salary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_salary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_salary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
