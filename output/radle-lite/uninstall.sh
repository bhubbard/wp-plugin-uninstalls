#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'radle_comment_system'
wp option delete 'radle_subreddit'
wp option delete 'radle_client_id'
wp option delete 'radle_client_secret'
wp option delete 'radle_share_events'
wp option delete 'radle_share_domain'
wp option delete 'radle_reddit_access_token'
wp option delete 'radle_reddit_refresh_token'
wp option delete 'radle_destination_type'
wp option delete 'radle_reddit_username'
wp option delete 'radle_show_comments_menu'
wp option delete 'radle_display_badges'
wp option delete 'radle_button_position'
wp option delete 'radle_show_powered_by'
wp option delete 'radle_default_post_type'
wp option delete 'radle_default_title_template'
wp option delete 'radle_default_content_template'
wp option delete 'radle_enable_rate_limit_monitoring'
wp option delete 'radle_rate_limit_data'
wp option delete 'radle_cache_duration'
wp option delete 'radle_comment_approval_filter'
wp option delete 'radle_max_depth_level'
wp option delete 'radle_max_siblings'
wp option delete 'radle_enable_search'
wp option delete 'radle_show_badges'
wp option delete 'radle_default_sort'
wp option delete 'radle_github_access_token'
wp option delete 'radle_site_id'

# Delete Transients
wp transient delete 'radle_oauth_state'

# Clear Cron Jobs
wp cron event delete 'radle_usage_weekly_ping_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_reddit_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_reddit_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_reddit_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_reddit_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_radle_hidden_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_radle_hidden_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_radle_hidden_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_radle_hidden_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_radle_comment_system_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_radle_comment_system_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_radle_comment_system_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_radle_comment_system_override'"
