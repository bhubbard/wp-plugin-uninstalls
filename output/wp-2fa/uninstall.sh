#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_wp2fap'
wp option delete 'melapress_login_security_freemius_state'

# Delete Transients
wp transient delete 'fs_mls_premium'
wp transient delete 'wp_2fa_config_file_hash'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%locked_account_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%locked_account_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%locked_account_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%locked_account_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_capabilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
