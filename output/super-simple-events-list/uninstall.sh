#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a_loc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a_loc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a_loc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a_loc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a_addr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a_addr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a_addr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a_addr'"
