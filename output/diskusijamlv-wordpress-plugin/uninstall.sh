#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'diskusijam_api_page_key'
wp option delete 'diskusijam_api_user_key'
wp option delete 'diskusijam_profile_id'
wp option delete 'diskusijam_page_id'
wp option delete 'diskusijam_comment_sync'
wp option delete 'diskusijam_lang'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diskusijam_comment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diskusijam_comment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diskusijam_comment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diskusijam_comment'"
