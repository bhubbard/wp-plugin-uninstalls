#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'active_sitewide_plugins'
wp option delete 'bbpm_force_deactivate'
wp option delete 'bbpm_has_import_data_bbpmessages'
wp option delete 'bbpm_settings'

# Clear Cron Jobs
wp cron event delete 'WP_Messages_weekly_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbpm_mute_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbpm_mute_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbpm_mute_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbpm_mute_notifications'"
