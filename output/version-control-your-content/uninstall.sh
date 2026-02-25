#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vcyc_active_additional_css'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vcyc_commit_path_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vcyc_active_%'"
wp option delete 'vcyc_github_conn'
wp option delete 'vcyc_github_conn_active'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vcyc_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vcyc_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vcyc_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vcyc_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vcyc_commit_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vcyc_commit_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vcyc_commit_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vcyc_commit_path'"
