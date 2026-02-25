#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plzcr_settings'

# Clear Cron Jobs
wp cron event delete 'plzcr_digest_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plz_fresh_never'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plz_fresh_never'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plz_fresh_never'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plz_fresh_never'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plz_fresh_interval_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plz_fresh_interval_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plz_fresh_interval_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plz_fresh_interval_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plz_fresh_last_reviewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plz_fresh_last_reviewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plz_fresh_last_reviewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plz_fresh_last_reviewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plz_fresh_snooze_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plz_fresh_snooze_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plz_fresh_snooze_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plz_fresh_snooze_until'"
