#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'illegal_names'
wp option delete 'limited_email_domains'
wp option delete 'wp_aaieduhr_auth_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aaieduhr_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aaieduhr_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aaieduhr_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aaieduhr_account'"
