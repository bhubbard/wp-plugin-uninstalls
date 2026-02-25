#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pixelcode'
wp option delete 'wiser_enable_for_wp'
wp option delete 'apikey'
wp option delete 'pixeltag'
wp option delete 'wiser_enable_for_edd'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
