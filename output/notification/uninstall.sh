#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notification_wizard_dismissed'
wp option delete 'notification_debug_log'
wp option delete 'adminhash'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'notification_general'
wp option delete '_transient_notification_settings_config'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'notification_%'"
wp option delete '_notification_settings_config'
wp option delete '_notification_settings_hash'
wp option delete 'notification_licenses'
wp option delete 'notification_story_dismissed'
wp option delete 'notification_data_version'
wp option delete 'notification_db_version'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'notification_background_processing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enabled_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enabled_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enabled_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enabled_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_notification_type_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_notification_type_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_notification_type_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_notification_type_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_email'"
