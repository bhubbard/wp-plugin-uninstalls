#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wfv_setting_allow_direct_access'
wp option delete 'wfv_db_version'
wp option delete 'wfv_setting_file_tpl'
wp option delete 'wfv_setting_file_css'
wp option delete 'wfv_post_types'
wp option delete 'wfv_setting_allowed_ftypes'
wp option delete 'wfv_setting_date_format'
wp option delete 'wfvIcon'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wfv_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wfv_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wfv_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wfv_files'"
