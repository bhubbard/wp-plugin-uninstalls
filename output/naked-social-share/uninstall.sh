#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'naked_social_share_settings'
wp option delete 'naked_social_share_version'
wp option delete 'naked_ss__settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'naked_shares_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'naked_shares_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'naked_shares_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'naked_shares_count'"
