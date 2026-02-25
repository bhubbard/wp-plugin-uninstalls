#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cuav_default_avatar'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_avatar'"
