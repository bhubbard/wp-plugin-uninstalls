#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fapiMemberApiEmail'
wp option delete 'fapiMemberApiKey'
wp option delete 'fapi_member_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fapi_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fapi_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fapi_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fapi_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fapi_user_memberships'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fapi_user_memberships'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fapi_user_memberships'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fapi_user_memberships'"
