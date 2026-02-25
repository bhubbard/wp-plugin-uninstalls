#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trustpulse_script_id'
wp option delete 'trustpulse_script_enabled'
wp option delete 'trustpulse_intercept_duplicator_redirect'
wp option delete 'duplicator_redirect_to_welcome'
wp option delete 'wpforms_activation_redirect'
wp option delete 'aioseo_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_checked'"
wp option delete 'wpforms_license'
wp option delete 'monsterinsights_license'
wp option delete 'optin_monster_api'
wp option delete 'trustpulse_api_plugin_do_activation_redirect'

# Delete Transients
wp transient delete '_monsterinsights_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notification_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notification_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notification_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notification_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plans'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plans'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plans'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plans'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plugins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plugins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plugins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plugins'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'theme'"
