#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsvg_settings'
wp option delete 'WPSVGActivated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsvg_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsvg_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsvg_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsvg_notice_dismissed'"
