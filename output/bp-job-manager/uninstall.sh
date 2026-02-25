#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpjm_general_settings'
wp option delete 'bpjm_job_application_pgid'
wp option delete 'job_manager_per_page'
wp option delete 'job_manager_job_dashboard_page_id'
wp option delete 'resume_manager_enable_categories'
wp option delete 'resume_manager_submission_limit'
wp option delete 'resume_manager_submit_resume_form_page_id'
wp option delete 'resume_manager_candidate_dashboard_page_id'

# Delete Transients
wp transient delete '_bpjm_is_new_install'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpjm_display_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpjm_display_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpjm_display_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpjm_display_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpjm_profile_resume_show_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpjm_profile_resume_show_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpjm_profile_resume_show_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpjm_profile_resume_show_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_candidate_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_candidate_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_candidate_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_candidate_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_candidate_education'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_candidate_education'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_candidate_education'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_candidate_education'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_candidate_experience'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_candidate_experience'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_candidate_experience'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_candidate_experience'"
