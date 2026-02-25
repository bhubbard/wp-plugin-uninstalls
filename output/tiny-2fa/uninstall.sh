#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tiny_2fa_version'
wp option delete 'tiny_2fa_encryption_key'
wp option delete 'tiny_2fa_brute_force_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tiny_2fa_secret_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tiny_2fa_secret_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tiny_2fa_secret_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tiny_2fa_secret_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tiny_2fa_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tiny_2fa_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tiny_2fa_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tiny_2fa_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tiny_2fa_email_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tiny_2fa_email_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tiny_2fa_email_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tiny_2fa_email_enabled'"
