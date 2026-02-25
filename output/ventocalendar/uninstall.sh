#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ventocalendar'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_color'"
