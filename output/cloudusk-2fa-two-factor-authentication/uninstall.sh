#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cloudusk_twofa_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudusk_twofa_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudusk_twofa_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudusk_twofa_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudusk_twofa_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudusk_2fa_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudusk_2fa_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudusk_2fa_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudusk_2fa_settings'"
