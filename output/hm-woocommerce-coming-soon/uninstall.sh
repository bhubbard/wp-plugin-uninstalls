#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comingsoon_custom_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comingsoon_custom_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comingsoon_custom_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comingsoon_custom_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comingsoon_available_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comingsoon_available_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comingsoon_available_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comingsoon_available_on'"
