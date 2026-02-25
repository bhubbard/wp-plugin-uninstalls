#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings'"
wp option delete 'lead2team-settings'
wp option delete 'lead2team-all-filters'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lead2team-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lead2team-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lead2team-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lead2team-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lead2team-filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lead2team-filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lead2team-filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lead2team-filter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-widget-hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-widget-hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-widget-hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-widget-hide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-settings'"
