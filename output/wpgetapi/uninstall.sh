#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpgetapi_setup'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpgetapi_%'"
wp option delete 'wpgetapi_pro_license_status'
wp option delete 'wpgetapi_dismiss_dash_notice_until'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_api_call_status'"
wp option delete 'updraft_task_manager_dbversion'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpgetapi_chain_%' OR option_name LIKE '_site_transient_wpgetapi_chain_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
