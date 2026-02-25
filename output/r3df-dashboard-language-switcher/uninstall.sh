#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'r3df_dashboard_language_switcher'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'r3df_dashboard_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'r3df_dashboard_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'r3df_dashboard_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'r3df_dashboard_language'"
