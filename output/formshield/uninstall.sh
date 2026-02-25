#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'formshield_seen_messages'
wp option delete 'formshield_email_queue'
wp option delete 'formshield_last_periodic_report'
wp option delete 'et_theme_builder'
wp option delete 'formshield_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_updated'"
wp option delete 'formshield_ip_blacklist'
wp option delete 'wp-human-presence'
wp option delete 'formshield_version'
wp option delete 'ninja_forms_version'
wp option delete 'ninja_forms_load_deprecated'

# Delete Transients
wp transient delete 'dcd_divi_scan'

# Clear Cron Jobs
wp cron event delete 'formshield_send_periodic_report'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpforms_entries_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpforms_entries_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpforms_entries_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpforms_entries_count'"
