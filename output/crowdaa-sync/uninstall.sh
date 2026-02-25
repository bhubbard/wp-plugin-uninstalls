#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crowdaa_cron_sync_enabled'
wp option delete 'crowdaa_sync_articles_wp_to_api_from'
wp option delete 'crowdaa_sync_articles_api_to_wp_from'
wp option delete 'crowdaa_sync_articles_wp_to_api_enabled'
wp option delete 'crowdaa_sync_articles_api_to_wp_enabled'
wp option delete 'crowdaa_auth_token'
wp option delete 'crowdaa_sync_categories_mode'
wp option delete 'crowdaa_sync_categories_list'
wp option delete 'crowdaa_sync_feed_categories'
wp option delete 'default_image'
wp option delete 'crowdaa_sync_wpapi_register_enabled'
wp option delete 'crowdaa_sync_max_duration'
wp option delete 'crowdaa_sync_domain_names'
wp option delete 'crowdaa_api_url'
wp option delete 'crowdaa_user_email'
wp option delete 'crowdaa_user_password'
wp option delete 'crowdaa_user_api_key'
wp option delete 'crowdaa_user_id'
wp option delete 'crowdaa_last_version'
wp option delete 'crowdaa_sync_perm_plugin'
wp option delete 'crowdaa_plugin_api_key'
wp option delete 'crowdaa_sync_internal_version'

# Clear Cron Jobs
wp cron event delete 'cron_sync'
wp cron event delete 'clear_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_category_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_category_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_category_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_category_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crowdaa_is_event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crowdaa_is_event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crowdaa_is_event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crowdaa_is_event'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'api_term_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'api_term_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'api_term_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'api_term_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'api_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'api_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'api_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'api_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crowdaa_last_api_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crowdaa_last_api_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crowdaa_last_api_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crowdaa_last_api_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crowdaa_last_wp_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crowdaa_last_wp_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crowdaa_last_wp_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crowdaa_last_wp_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crowdaa_need_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crowdaa_need_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crowdaa_need_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crowdaa_need_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crowdaa_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crowdaa_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crowdaa_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crowdaa_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crowdaa_event_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crowdaa_event_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crowdaa_event_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crowdaa_event_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crowdaa_event_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crowdaa_event_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crowdaa_event_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crowdaa_event_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_option_fullscreen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_option_fullscreen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_option_fullscreen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_option_fullscreen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'api_media_map'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'api_media_map'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'api_media_map'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'api_media_map'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'second_featured_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'second_featured_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'second_featured_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'second_featured_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crowdaa_picture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crowdaa_picture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crowdaa_picture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crowdaa_picture'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'api_feedpicture_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'api_feedpicture_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'api_feedpicture_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'api_feedpicture_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crowdaa_notification_send'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crowdaa_notification_send'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crowdaa_notification_send'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crowdaa_notification_send'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crowdaa_notification_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crowdaa_notification_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crowdaa_notification_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crowdaa_notification_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crowdaa_notification_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crowdaa_notification_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crowdaa_notification_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crowdaa_notification_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crowdaa_notification_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crowdaa_notification_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crowdaa_notification_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crowdaa_notification_title'"
