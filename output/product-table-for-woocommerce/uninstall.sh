#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awcpt_general_settings'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awcpt_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awcpt_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awcpt_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awcpt_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awcpt_query'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awcpt_query'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awcpt_query'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awcpt_query'"
