#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'f12_floating_menu_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_floating_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_floating_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_floating_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_floating_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_floating_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_floating_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_floating_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_floating_links'"
