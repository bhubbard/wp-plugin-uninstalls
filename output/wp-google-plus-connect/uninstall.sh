#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wds_google_connect_app_name'
wp option delete 'wds_google_connect_client_id'
wp option delete 'wds_google_connect_client_secret'
wp option delete 'wds_google_connect_redirect_url'
wp option delete 'wds_google_connect_developer_key'
wp option delete 'wds_google_connect_badge_page_id'
wp option delete 'wds_google_connect_badge_name'
wp option delete 'wds_google_connect_badge_type'
wp option delete 'wds_google_connect_badge_lang'
wp option delete 'wds_google_connect_import_author'
wp option delete 'wds_google_connect_sync_schedule'
wp option delete 'wds_google_connect_post_type'
wp option delete 'wds_google_connect_post_status'
wp option delete 'wds_google_connect_category'
wp option delete 'wds_google_connect_tags'
wp option delete 'wds_google_connect_hash_tags'
wp option delete 'wds_google_connect_hash_tags_2_tags'
wp option delete 'wds_google_connect_wp_comments'
wp option delete 'wds_google_connect_show_glink'
wp option delete 'wds_google_connect_gcomments'
wp option delete 'wds_google_connect_ghost_users'
wp option delete 'wds_google_connect_bp_login'
wp option delete 'wds_google_connect_bp_profile'
wp option delete 'wds_google_connect_bp_registration'
wp option delete 'wds_google_connect_bp_required'
wp option delete 'wds_google_connect_bp_activity'
wp option delete 'wds_google_connect_bp_activity_comments'
wp option delete 'wds_google_connect_bp_ghost_users'
wp option delete 'wds_google_connect_consumer_key'
wp option delete 'wds_google_connect_consumer_secret'

# Clear Cron Jobs
wp cron event delete 'wds_google_connect_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wds_google_connect_bp_activity_import'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wds_google_connect_bp_activity_import'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wds_google_connect_bp_activity_import'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wds_google_connect_bp_activity_import'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wds_google_connect_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wds_google_connect_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wds_google_connect_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wds_google_connect_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wds_google_connect_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wds_google_connect_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wds_google_connect_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wds_google_connect_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wds_google_connect_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wds_google_connect_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wds_google_connect_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wds_google_connect_photo'"
