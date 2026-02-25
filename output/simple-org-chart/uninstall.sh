#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'org_chart_sample'
wp option delete 'org_array'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'top_org_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'top_org_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'top_org_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'top_org_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shr_pic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shr_pic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shr_pic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shr_pic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'org_job_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'org_job_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'org_job_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'org_job_title'"
