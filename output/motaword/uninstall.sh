#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%languages' OR option_name LIKE '_site_transient_%languages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%access_token' OR option_name LIKE '_site_transient_%access_token'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%project_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%project_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%project_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%project_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%project_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%project_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%project_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%project_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%progress_tra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%progress_tra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%progress_tra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%progress_tra'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%progress_prf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%progress_prf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%progress_prf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%progress_prf'"
