#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'secure_tfa_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secure_tfa_temporary_totp_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secure_tfa_temporary_totp_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secure_tfa_temporary_totp_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secure_tfa_temporary_totp_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
