#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'itc_slawp_secure_login_authorization'
wp option delete 'itc_slawp_secure_login_authorization_plugin_access'
wp option delete 'itc_slawp_secure_login_authorization_plugin_reset_secret'
wp option delete 'itc_slawp_login_authorization_paused'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_itc_slawp_secure_login_authorization%' OR option_name LIKE '_site_transient_itc_slawp_secure_login_authorization%'"
wp transient delete 'itc_slawp_clear_transient_secure_login_authorization'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itc_slawp_wp_secure_access_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itc_slawp_wp_secure_access_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itc_slawp_wp_secure_access_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itc_slawp_wp_secure_access_expiry'"
