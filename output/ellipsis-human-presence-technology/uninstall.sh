#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-human-presence'
wp option delete 'ninja_forms_version'
wp option delete 'ninja_forms_load_deprecated'
wp option delete 'wp-human-presence-upgrade-3-4-6'

# Delete Transients
wp transient delete 'human_presence_license'

# Clear Cron Jobs
wp cron event delete 'human_presence_autoprotect_scan'
wp cron event delete 'hp_autoprotect_scan'
wp cron event delete 'hpres_autoprotect_scan'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpforms_entries_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpforms_entries_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpforms_entries_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpforms_entries_count'"
