#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reviewsjet_auth'
wp option delete 'reviewsjet_settings'

# Delete Transients
wp transient delete 'reviewsjet_cache'

# Clear Cron Jobs
wp cron event delete 'reviewsjet_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reviewsjet_user_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reviewsjet_user_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reviewsjet_user_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reviewsjet_user_preferences'"
