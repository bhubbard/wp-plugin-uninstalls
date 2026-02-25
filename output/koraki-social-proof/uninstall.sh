#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'koraki_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_koraki_post_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_koraki_post_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_koraki_post_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_koraki_post_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
