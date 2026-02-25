#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_leave_at_door_%'"
wp option delete 'wc_leave_at_door_default_checked'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leave_at_door_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leave_at_door_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leave_at_door_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leave_at_door_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leave_at_door_instructions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leave_at_door_instructions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leave_at_door_instructions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leave_at_door_instructions'"
