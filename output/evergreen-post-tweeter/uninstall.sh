#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ept_opt_admin_url'
wp option delete 'ept_after_update'
wp option delete 'as_number_tweet'
wp option delete 'as_post_type'
wp option delete 'ept_cat_tweet'
wp option delete 'ept_tag_tweet'
wp option delete 'ept_opt_tweet_type'
wp option delete 'ept_opt_add_text'
wp option delete 'ept_opt_add_text_at'
wp option delete 'ept_opt_include_link'
wp option delete 'ept_opt_custom_url_option'
wp option delete 'ept_opt_use_url_tracking'
wp option delete 'ept_opt_use_url_shortner'
wp option delete 'ept_opt_url_shortener'
wp option delete 'ept_opt_bitly_user'
wp option delete 'ept_opt_bitly_key'
wp option delete 'ept_opt_custom_hashtag_option'
wp option delete 'ept_opt_use_inline_hashtags'
wp option delete 'ept_opt_hashtag_length'
wp option delete 'ept_opt_custom_hashtag_field'
wp option delete 'ept_opt_hashtags'
wp option delete 'ept_opt_age_limit'
wp option delete 'ept_opt_max_age_limit'
wp option delete 'ept_opt_use_pause_tweet'
wp option delete 'ept_opt_start_pause_time'
wp option delete 'ept_opt_end_pause_time'
wp option delete 'ept_opt_schedule_day_mon'
wp option delete 'ept_opt_schedule_day_tue'
wp option delete 'ept_opt_schedule_day_wed'
wp option delete 'ept_opt_schedule_day_thu'
wp option delete 'ept_opt_schedule_day_fri'
wp option delete 'ept_opt_schedule_day_sat'
wp option delete 'ept_opt_schedule_day_sun'
wp option delete 'ept_opt_schedule_times_counter'
wp option delete 'ept_opt_schedule_times'
wp option delete 'next_tweet_time'
wp option delete 'ept_opt_schedule_times_hour'
wp option delete 'ept_opt_schedule_times_minute'
wp option delete 'ept_enable_log'
wp option delete 'ept_opt_omit_cats'
wp option delete 'ept_opt_last_update'
wp option delete 'ept_opt_excluded_post'
wp option delete 'ept_opt_tweeted_posts'
wp option delete 'ept_opt_interval'
wp option delete 'ept_opt_interval_slop'
wp option delete 'ept_settings'
wp option delete 'ept_opt_custom_url_field'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ept_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ept_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ept_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ept_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ept_lwb_plugin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ept_lwb_plugin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ept_lwb_plugin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ept_lwb_plugin'"
