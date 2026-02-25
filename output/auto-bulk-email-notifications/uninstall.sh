#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aben_license_status'
wp option delete 'aben_options'
wp option delete 'aben_event_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aben_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aben_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aben_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aben_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aben_unsubscribe_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aben_unsubscribe_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aben_unsubscribe_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aben_unsubscribe_date'"
