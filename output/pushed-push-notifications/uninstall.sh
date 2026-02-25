#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pushed_api_key'
wp option delete 'pushed_app_key'
wp option delete 'pushed_app_secret'
wp option delete 'pushed_target_type'
wp option delete 'pushed_target_alias'
wp option delete 'pushed_sources'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushed_message_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushed_message_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushed_message_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushed_message_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushed_api_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushed_api_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushed_api_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushed_api_request'"
