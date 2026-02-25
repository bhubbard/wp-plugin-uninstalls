#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WP_Github_Tools_Settingsgeneral'
wp option delete 'WP_Github_Tools_Data'

# Delete Transients
wp transient delete 'WP_Github_Tools'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_github_tools_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_github_tools_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_github_tools_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_github_tools_ignore_notice'"
