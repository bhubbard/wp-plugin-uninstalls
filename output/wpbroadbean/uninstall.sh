#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbb_username'
wp option delete 'wpbb_password'
wp option delete 'wpbb_plugin_credit'
wp option delete 'wpbb_hide_job_data_output'
wp option delete 'wpbb_job_application_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_status'"
wp option delete 'wpbroadbean_version'
wp option delete 'wpbroadbean_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'job_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'job_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'job_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'job_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpbb_job_broadbean_application_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpbb_job_broadbean_application_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpbb_job_broadbean_application_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpbb_job_broadbean_application_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpbb_job_broadbean_application_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpbb_job_broadbean_application_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpbb_job_broadbean_application_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpbb_job_broadbean_application_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%salary_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%salary_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%salary_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%salary_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%application_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%application_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%application_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%application_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'candidate_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'candidate_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'candidate_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'candidate_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'candidate_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'candidate_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'candidate_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'candidate_email'"
