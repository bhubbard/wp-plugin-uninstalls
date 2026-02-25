#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wptc-premium-extensions'
wp option delete 'spamshield_options'
wp option delete 'spamshield_whitelist_keys'
wp option delete 'itsec-storage'
wp option delete 'aio_wp_security_configs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_site_transient_%'"
wp option delete 'spamshield_ubl_cache'
wp option delete 'auto_update_plugins'
wp option delete 'auto_updater.lock'
wp option delete '_site_transient_update_core'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%'"
wp option delete 'wptc-init-errors'
wp option delete 'iwp_client_public_key'
wp option delete 'iwp_client_nossl_key'
wp option delete 'wptc_disable_sentry_lib'
wp option delete 'ftp_credentials'
wp option delete 'wptc_installed'
wp option delete 'is_wptc_activation_redirected'

# Delete Transients
wp transient delete 'dirsize_cache'

# Clear Cron Jobs
wp cron event delete 'wptc_trigger_truncate_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login_time'"
