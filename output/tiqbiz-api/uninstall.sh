#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tiqbiz_api_token'
wp option delete 'tiqbiz_api_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tiqbiz_api_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tiqbiz_api_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tiqbiz_api_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tiqbiz_api_post_id'"
