#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'subdotclub_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subdotclub_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subdotclub_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subdotclub_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subdotclub_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subdotclub_delete_premium'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subdotclub_delete_premium'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subdotclub_delete_premium'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subdotclub_delete_premium'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subdotclub_post_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subdotclub_post_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subdotclub_post_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subdotclub_post_published'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subdotclub_post_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subdotclub_post_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subdotclub_post_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subdotclub_post_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subdotclub_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subdotclub_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subdotclub_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subdotclub_post_id'"
