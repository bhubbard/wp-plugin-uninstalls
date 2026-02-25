#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atnfwoo_tracking_number_description'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atnfwoo_courier_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atnfwoo_courier_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atnfwoo_courier_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atnfwoo_courier_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atnfwoo_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atnfwoo_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atnfwoo_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atnfwoo_tracking_number'"
