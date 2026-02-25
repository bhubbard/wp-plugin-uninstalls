#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'climate_content_pool_general_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_pool_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_pool_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_pool_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_pool_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_pool_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_pool_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_pool_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_pool_id'"
