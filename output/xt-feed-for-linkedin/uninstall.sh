#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xtfefoli_global_sharing_message'
wp option delete 'xtfefoli_linkedin_user_data'
wp option delete 'xtfefoli_users_companies'

# Delete Transients
wp transient delete 'xtfefoli_linkedin_feedpress_page_sync_flag'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xtfefoli_dont_share_post_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xtfefoli_dont_share_post_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xtfefoli_dont_share_post_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xtfefoli_dont_share_post_linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xtfefoli_sended_on_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xtfefoli_sended_on_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xtfefoli_sended_on_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xtfefoli_sended_on_linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xtfefoli_shared_on_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xtfefoli_shared_on_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xtfefoli_shared_on_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xtfefoli_shared_on_linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xtfefoli_share_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xtfefoli_share_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xtfefoli_share_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xtfefoli_share_message'"
