#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bizifyme_options'

# Clear Cron Jobs
wp cron event delete 'bizifyme_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bizifyme_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bizifyme_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bizifyme_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bizifyme_permalink'"
