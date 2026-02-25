#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'afs_analytics_oauth_state'
wp option delete 'afsa_db_schema_version'
wp option delete 'afsa_paa_rc'
wp option delete 'afs_account'
wp option delete 'afs_accesskey'
wp option delete 'afs_admin_pages_tracking'
wp option delete 'afs_self_visits_hidden'
wp option delete 'afs_user_logged_tracking'
wp option delete 'afs_udisplay_admin_summary'
wp option delete 'afs_gravatar_profile_enabled'
wp option delete 'afs_cookie_setting'
wp option delete 'afs_ip_setting'
wp option delete 'afs_user_consent'
wp option delete 'afs_localization_setting'
wp option delete 'afsa_settings_main'
wp option delete 'afsa_settings_privacy'
wp option delete 'afsa_settings_autotrack'
wp option delete 'afsa_settings_woo'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afstrackername'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afstrackername'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afstrackername'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afstrackername'"
