-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ept_opt_admin_url', 'ept_after_update', 'as_number_tweet', 'as_post_type', 'ept_cat_tweet', 'ept_tag_tweet', 'ept_opt_tweet_type', 'ept_opt_add_text', 'ept_opt_add_text_at', 'ept_opt_include_link', 'ept_opt_custom_url_option', 'ept_opt_use_url_tracking', 'ept_opt_use_url_shortner', 'ept_opt_url_shortener', 'ept_opt_bitly_user', 'ept_opt_bitly_key', 'ept_opt_custom_hashtag_option', 'ept_opt_use_inline_hashtags', 'ept_opt_hashtag_length', 'ept_opt_custom_hashtag_field', 'ept_opt_hashtags', 'ept_opt_age_limit', 'ept_opt_max_age_limit', 'ept_opt_use_pause_tweet', 'ept_opt_start_pause_time', 'ept_opt_end_pause_time', 'ept_opt_schedule_day_mon', 'ept_opt_schedule_day_tue', 'ept_opt_schedule_day_wed', 'ept_opt_schedule_day_thu', 'ept_opt_schedule_day_fri', 'ept_opt_schedule_day_sat', 'ept_opt_schedule_day_sun', 'ept_opt_schedule_times_counter', 'ept_opt_schedule_times', 'next_tweet_time', 'ept_opt_schedule_times_hour', 'ept_opt_schedule_times_minute', 'ept_enable_log', 'ept_opt_omit_cats', 'ept_opt_last_update', 'ept_opt_excluded_post', 'ept_opt_tweeted_posts', 'ept_opt_interval', 'ept_opt_interval_slop', 'ept_settings', 'ept_opt_custom_url_field');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ept_ignore_notice', '_ept_lwb_plugin');
DELETE FROM wp_usermeta WHERE meta_key IN ('ept_ignore_notice', '_ept_lwb_plugin');
DELETE FROM wp_termmeta WHERE meta_key IN ('ept_ignore_notice', '_ept_lwb_plugin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ept_ignore_notice', '_ept_lwb_plugin');

