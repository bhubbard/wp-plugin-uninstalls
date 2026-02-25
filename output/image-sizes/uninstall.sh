#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thumbpress_notice_dismissed_week'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'thumbpress_notice_dismissed_%'"
wp option delete 'thumbpress_settings_init'
wp option delete 'schema-ActionScheduler_StoreSchema'
wp option delete 'schema-ActionScheduler_LoggerSchema'
wp option delete 'thumbpress-year-end-dec-21_campaign_dismissed'
wp option delete 'image_sizes_year_notice'
wp option delete 'codexpert-blog-json'
wp option delete 'thumbpress_max_size_value'
wp option delete 'thumbpress_live_chat_enabled'
wp option delete 'thumbpress_modules'
wp option delete '_image-sizes'
wp option delete 'medium_large_size_w'
wp option delete 'medium_large_size_h'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismissed'"
wp option delete 'thumbpress_action_log'
wp option delete 'thumbpress_convert_img_val'
wp option delete 'thumbpress_convert_progress'
wp option delete 'thumbpress_convert_total_processd'
wp option delete 'thumbpress_convert_total_converted'
wp option delete 'thumbpress_now_convert_background_total_images'
wp option delete 'convert_last_completed_time'
wp option delete 'thumbpress_now_convert_total_image'
wp option delete 'image-sizes_setup_done'
wp option delete 'image_download_disable'
wp option delete 'thumbpress_regenerate_progress'
wp option delete 'thumbpress_regenerate_total_processed'
wp option delete 'thumbpress_regenerate_total_deleted'
wp option delete 'thumbpress_regenerate_total_created'
wp option delete 'thumbpress_regenerate_limit'
wp option delete 'thumbpress_regenerate_total_image'
wp option delete 'thumbpress_regenerate_last_schedule_time'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cx-plugin-info-%' OR option_name LIKE '_site_transient_cx-plugin-info-%'"

# Clear Cron Jobs
wp cron event delete 'codexpert-daily'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbpress_facebook_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbpress_facebook_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbpress_facebook_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbpress_facebook_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbpress_linkedin_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbpress_linkedin_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbpress_linkedin_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbpress_linkedin_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbpress_twitter_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbpress_twitter_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbpress_twitter_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbpress_twitter_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbpress_pinterest_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbpress_pinterest_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbpress_pinterest_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbpress_pinterest_image'"
