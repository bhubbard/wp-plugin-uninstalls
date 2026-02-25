#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'feed2post_options'
wp option delete 'feed2post_license_key'
wp option delete 'feed2post_notice'
wp option delete 'feed2post_lock'
wp option delete 'feed2post_log_file'

# Clear Cron Jobs
wp cron event delete 'feed2post_feed_posts_update_event'
wp cron event delete 'feed2post_hourly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_not_imported_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_not_imported_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_not_imported_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_not_imported_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'feed_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'feed_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'feed_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'feed_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crontab_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crontab_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crontab_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crontab_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crontab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crontab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crontab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crontab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cron_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cron_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cron_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cron_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebook_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebook_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebook_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebook_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkedin_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkedin_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkedin_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkedin_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'feed_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'feed_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'feed_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'feed_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'posts_updated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'posts_updated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'posts_updated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'posts_updated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'posts_updated_at_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'posts_updated_at_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'posts_updated_at_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'posts_updated_at_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
