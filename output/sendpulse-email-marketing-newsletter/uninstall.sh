#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sp_emp_session_storage_notice_dismissed'
wp option delete 'sp_emp_file_storage_notice_dismissed'
wp option delete 'sp_import_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sp_user_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sp_user_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sp_user_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sp_user_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sp_form_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sp_form_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sp_form_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sp_form_code'"
