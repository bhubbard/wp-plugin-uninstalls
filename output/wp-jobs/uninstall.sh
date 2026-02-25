#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpjobs_send_mail'
wp option delete 'wp_jobs_currency'
wp option delete 'wp_jobs_listing'
wp option delete 'wpjobs_wg_bg_color'
wp option delete 'wp_jobs_list_sidebar'
wp option delete 'wp_jobs_detail_sidebar'
wp option delete 'wpjobs_pg_pro_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_jobs_designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_jobs_designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_jobs_designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_jobs_designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_jobs_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_jobs_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_jobs_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_jobs_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_jobs_salary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_jobs_salary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_jobs_salary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_jobs_salary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_jobs_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_jobs_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_jobs_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_jobs_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpjobseditorqualification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpjobseditorqualification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpjobseditorqualification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpjobseditorqualification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_jobs_frm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_jobs_frm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_jobs_frm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_jobs_frm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_jobs_application_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_jobs_application_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_jobs_application_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_jobs_application_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_jobs_date_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_jobs_date_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_jobs_date_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_jobs_date_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_jobs_date_close'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_jobs_date_close'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_jobs_date_close'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_jobs_date_close'"
