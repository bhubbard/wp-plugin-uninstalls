#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post-worktime-logger-options'
wp option delete 'post-worktime-logger-last-ping-timestamp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post-worktime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post-worktime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post-worktime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post-worktime'"
