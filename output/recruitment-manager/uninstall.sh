#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cwrm_job_fields'
wp option delete 'cwrm_css_field'
wp option delete 'cwrm_gen_opt_fields'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cwrm_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cwrm_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cwrm_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cwrm_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cwrm_applicant_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cwrm_applicant_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cwrm_applicant_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cwrm_applicant_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cwrm_applicant_for'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cwrm_applicant_for'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cwrm_applicant_for'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cwrm_applicant_for'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cwrm_job_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cwrm_job_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cwrm_job_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cwrm_job_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cwrm_job_min_salary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cwrm_job_min_salary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cwrm_job_min_salary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cwrm_job_min_salary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cwrm_job_max_salary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cwrm_job_max_salary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cwrm_job_max_salary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cwrm_job_max_salary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cwrm_job_last_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cwrm_job_last_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cwrm_job_last_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cwrm_job_last_date'"
