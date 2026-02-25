#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acns_api_url'
wp option delete 'acns_api_key'
wp option delete 'acns_list_id'
wp option delete 'acns_show_msg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acns_error_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acns_error_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acns_error_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acns_error_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acns_check_newsletter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acns_check_newsletter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acns_check_newsletter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acns_check_newsletter'"
