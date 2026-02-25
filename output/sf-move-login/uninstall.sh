#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'movelogin_scan_phpversion'
wp option delete 'sfml'
wp option delete 'registration'
wp option delete 'movelogin_users-login_settings'
wp option delete 'movelogin_settings'
wp option delete 'movelogin_active_submodule_move-login'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'movelogin_active_submodule_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_movelogin_unlock_admin_key-%' OR option_name LIKE '_site_transient_movelogin_unlock_admin_key-%'"
wp transient delete 'settings_errors'
wp transient delete 'movelogin_updates_message'
wp transient delete 'movelogin_is_https_supported'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_movelogin_plugins_api_%' OR option_name LIKE '_site_transient_movelogin_plugins_api_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_movelogin-notices-%' OR option_name LIKE '_site_transient_movelogin-notices-%'"
wp transient delete 'movelogin_active_submodules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'movelogin-bad-mx-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'movelogin-bad-mx-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'movelogin-bad-mx-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'movelogin-bad-mx-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'movelogin-blind-password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'movelogin-blind-password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'movelogin-blind-password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'movelogin-blind-password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'movelogin-password-needs-rehash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'movelogin-password-needs-rehash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'movelogin-password-needs-rehash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'movelogin-password-needs-rehash'"
