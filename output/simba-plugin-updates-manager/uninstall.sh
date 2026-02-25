#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'updraftmanager_last_version'
wp option delete 'udmanager_authenticated_sids_meta_offset'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_uddownld_%' OR option_name LIKE '_site_transient_uddownld_%'"

# Clear Cron Jobs
wp cron event delete 'updraftmanager_weeklycron'
wp cron event delete 'updraftmanager_delete_old_expired_licences'
wp cron event delete 'udmanager_dorenewalreminders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udmanager_lastcheckins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udmanager_lastcheckins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udmanager_lastcheckins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udmanager_lastcheckins'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udmanager_authenticated_sids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udmanager_authenticated_sids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udmanager_authenticated_sids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udmanager_authenticated_sids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updraftmanager_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updraftmanager_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updraftmanager_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updraftmanager_settings'"
