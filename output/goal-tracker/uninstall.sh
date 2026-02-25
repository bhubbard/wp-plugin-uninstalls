#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_goal_tracker_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selectorType'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selectorType'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selectorType'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selectorType'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eventName'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eventName'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eventName'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eventName'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'props'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'props'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'props'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'props'"
