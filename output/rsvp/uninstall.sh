#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rsvp_db_version'
wp option delete 'rsvp-rate-time'

# Clear Cron Jobs
wp cron event delete 'wp_simple_nonce_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsvp_screen_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsvp_screen_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsvp_screen_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsvp_screen_options'"
