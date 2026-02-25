#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'login_page'
wp option delete 'register_page'
wp option delete 'link_page'
wp option delete 'logout_frontpage'
wp option delete 'bsauth_custom_button'
wp option delete 'bs_auth_hide_local'
wp option delete 'bs_auth_signup_user_url'
wp option delete 'bs_auth_signup_user_email'
wp option delete 'bs_auth_signup_display_name'
wp option delete 'bs_auth_signup_nickname'
wp option delete 'bs_auth_signup_first_name'
wp option delete 'bs_auth_signup_last_name'
wp option delete 'bs_auth_signup_description'
wp option delete 'bs_auth_signup_jabber'
wp option delete 'bs_auth_signup_aim'
wp option delete 'bs_auth_signup_yim'
wp option delete 'bsauth_oauth_debug'
wp option delete 'bsauth_oauth_debug_http'
wp option delete 'blaatlogin_page'
wp option delete 'bs_oauth_dbversion'
wp option delete 'bs_debug_updatedb'
wp option delete 'bs_oauth_dataversion'
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
