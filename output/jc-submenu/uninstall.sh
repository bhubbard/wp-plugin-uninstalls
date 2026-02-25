#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jcs-general_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jcs-show_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jcs-show_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jcs-show_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jcs-show_notification'"
