#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buddyslack_options'
wp option delete 'buddyslack_bp_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buddyslack_activity_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buddyslack_activity_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buddyslack_activity_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buddyslack_activity_setting'"
