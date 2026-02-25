#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'suh_banned_message'
wp option delete 'suh_permban_active'
wp option delete 'suh_permban_ready'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'primary_blog'"
