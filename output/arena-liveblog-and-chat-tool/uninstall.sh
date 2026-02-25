#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'albfre_debug'
wp option delete 'albfre_max_date_to_live'
wp option delete 'albfre_date_format'
wp option delete 'albfre_user_token'
wp option delete 'albfre_user_siteId'
wp option delete 'albfre_user_accountId'
wp option delete 'albfre_user_displayName'
wp option delete 'albfre_user_accounts'
wp option delete 'albfre_user_json_accounts'
wp option delete 'albfre_logo_image_id'
wp option delete 'albfre_check_icon_id'

# Clear Cron Jobs
wp cron event delete 'arena_events_update_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arena_updated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arena_updated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arena_updated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arena_updated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arena_updated_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arena_updated_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arena_updated_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arena_updated_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_arena_blog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_arena_blog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_arena_blog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_arena_blog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arena_site'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arena_site'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arena_site'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arena_site'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arena_blog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arena_blog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arena_blog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arena_blog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arena_site_last_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arena_site_last_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arena_site_last_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arena_site_last_modified'"
