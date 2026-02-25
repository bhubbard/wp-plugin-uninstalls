#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sm1waze_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_sm1waze_widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_sm1waze_widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_sm1waze_widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_sm1waze_widget'"
