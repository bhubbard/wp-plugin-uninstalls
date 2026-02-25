#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pilotpress_api_version'
wp option delete 'pilotpress-settings'
wp option delete 'ppprotectDbVersion'

# Delete Transients
wp transient delete 'pilotpress_admin_preview'
wp transient delete 'pilotpress_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_usertags_%' OR option_name LIKE '_site_transient_usertags_%'"
wp transient delete 'pilotpress_tracking_url'
wp transient delete 'pilotpress_tracking'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_authenticate_user%' OR option_name LIKE '_site_transient_authenticate_user%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_login_url_pilotpress_user%' OR option_name LIKE '_site_transient_login_url_pilotpress_user%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pilotpress_redirect_to%' OR option_name LIKE '_site_transient_pilotpress_redirect_to%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pilotpress_recent_password_set%' OR option_name LIKE '_site_transient_pilotpress_recent_password_set%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_authenticate_user_pilotpress_user%' OR option_name LIKE '_site_transient_authenticate_user_pilotpress_user%'"
wp transient delete 'pilotpress_login_failed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pilotpress_throttle%' OR option_name LIKE '_site_transient_pilotpress_throttle%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pilotpress_blocked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pilotpress_blocked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pilotpress_blocked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pilotpress_blocked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%redirect_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%redirect_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%redirect_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%redirect_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pilotpress_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pilotpress_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pilotpress_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pilotpress_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%system_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%system_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%system_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%system_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pilotpress_system_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pilotpress_system_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pilotpress_system_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pilotpress_system_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppProtectCatOverride'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppProtectCatOverride'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppProtectCatOverride'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppProtectCatOverride'"
