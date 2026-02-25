#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpt_post_types'
wp option delete 'wpt_media'
wp option delete 'jd_keyword_format'
wp option delete 'jd_individual_twitter_users'
wp option delete 'wpt_mastodon_instance'
wp option delete 'jd_tweet_default'
wp option delete 'jd_tweet_default_edit'
wp option delete 'jd_twit_prepend'
wp option delete 'jd_twit_append'
wp option delete 'jd_post_excerpt'
wp option delete 'jd_date_format'
wp option delete 'wpt_use_stored_urls'
wp option delete 'jd_twit_custom_url'
wp option delete 'jd_max_tags'
wp option delete 'jd_max_characters'
wp option delete 'wpt_use_cats'
wp option delete 'wpt_tag_source'
wp option delete 'jd_strip_nonan'
wp option delete 'jd_replace_character'
wp option delete 'wpt_bluesky_token'
wp option delete 'wpt_bluesky_username'
wp option delete 'wp_debug_oauth'
wp option delete 'wpt_curl_error'
wp option delete 'wpt_disabled_services'
wp option delete 'wpt_bluesky_length'
wp option delete 'wpt_mastodon_token'
wp option delete 'wpt_mastodon_username'
wp option delete 'wpt_mastodon_length'
wp option delete 'app_consumer_key'
wp option delete 'app_consumer_secret'
wp option delete 'oauth_token'
wp option delete 'oauth_token_secret'
wp option delete 'wpt_app_limit'
wp option delete 'wtt_oauth_hash'
wp option delete 'bearer_token'
wp option delete 'wtt_twitter_username'
wp option delete 'wpt_error'
wp option delete 'wpt_x_length'
wp option delete 'comment-published-update'
wp option delete 'comment-published-text'
wp option delete 'suprapi'
wp option delete 'jd-functions-checked'
wp option delete 'wp_twitter_failure'
wp option delete 'wp_supr_failure'
wp option delete 'wp_url_failure'
wp option delete 'wp_bitly_failure'
wp option delete 'wpt_rate_limits'
wp option delete 'wpt_default_rate_limit'
wp option delete 'wpt_rate_limit'
wp option delete 'wpt_rate_limiting'
wp option delete 'jd-use-link-title'
wp option delete 'jd-use-link-description'
wp option delete 'newlink-published-text'
wp option delete 'jd_twit_blogroll'
wp option delete 'wpt_inline_edits'
wp option delete 'wpt_twitter_setup'
wp option delete 'twitterlogin'
wp option delete 'twitterpw'
wp option delete 'twitterlogin_encrypted'
wp option delete 'jd_twit_quickpress'
wp option delete 'jd-use-supr'
wp option delete 'jd-use-none'
wp option delete 'jd-use-wp'
wp option delete 'twitter-analytics-campaign'
wp option delete 'use-twitter-analytics'
wp option delete 'jd_shortener'
wp option delete 'wpt_auto_tweet_allowed'
wp option delete 'wpt_tweet_length'
wp option delete 'wpt_permit_feed_styles'
wp option delete 'use_tags_as_hashtags'
wp option delete 'bitlylogin'
wp option delete 'jd-use-bitly'
wp option delete 'bitlyapi'
wp option delete 'jd_api_post_status'
wp option delete 'jd_dynamic_analytics'
wp option delete 'use_dynamic_analytics'
wp option delete 'limit_categories'
wp option delete 'tweet_categories'
wp option delete 'yourlsapi'
wp option delete 'yourlspath'
wp option delete 'yourlsurl'
wp option delete 'yourlslogin'
wp option delete 'wp_to_twitter_version'
wp option delete 'wpt_authentication_missing'
wp option delete 'wpt_http'
wp option delete 'no-analytics'
wp option delete 'wpt_debug_tweets'
wp option delete 'wpt_truncation_order'
wp option delete 'wpt_server_string'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_length'"
wp option delete 'yourlstoken'
wp option delete 'joturlapi'
wp option delete 'joturllogin'
wp option delete 'joturl_longurl_params'
wp option delete 'joturl_domain'
wp option delete 'joturl_shorturl_params'
wp option delete 'wpt_shortener_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpt_last_%'"
wp option delete 'wpt_ignore_connection'
wp option delete 'wpt_license_key'
wp option delete 'wpt_license_valid'
wp option delete 'wpt_authorized_users'

# Delete Transients
wp transient delete '_wpt_post_update_future'
wp transient delete '_wpt_post_update_instant'
wp transient delete '_wpt_twit_instant'
wp transient delete '_wpt_twit_future'
wp transient delete '_wpt_twit_xmlrpc'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_last' OR option_name LIKE '_site_transient_%_last'"

# Clear Cron Jobs
wp cron event delete 'wpt_schedule_tweet_action'
wp cron event delete 'wptratelimits'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_custom_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_custom_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_custom_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_custom_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_omit_services'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_omit_services'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_omit_services'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_omit_services'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_post_template_x'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_post_template_x'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_post_template_x'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_post_template_x'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_post_template_mastodon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_post_template_mastodon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_post_template_mastodon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_post_template_mastodon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_post_template_bluesky'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_post_template_bluesky'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_post_template_bluesky'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_post_template_bluesky'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jd_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jd_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jd_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jd_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yourls_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yourls_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yourls_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yourls_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_authorized_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_authorized_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_authorized_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_authorized_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jd_wp_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jd_wp_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jd_wp_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jd_wp_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_failed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_failed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_failed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_failed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_post_this'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_post_this'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_post_this'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_post_this'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpt_post_template_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpt_post_template_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpt_post_template_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpt_post_template_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_short_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_short_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_short_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_short_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpt_bluesky_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpt_bluesky_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpt_bluesky_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpt_bluesky_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpt_bluesky_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpt_bluesky_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpt_bluesky_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpt_bluesky_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpt_mastodon_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpt_mastodon_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpt_mastodon_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpt_mastodon_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpt_mastodon_instance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpt_mastodon_instance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpt_mastodon_instance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpt_mastodon_instance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpt_mastodon_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpt_mastodon_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpt_mastodon_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpt_mastodon_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'app_consumer_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'app_consumer_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'app_consumer_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'app_consumer_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'app_consumer_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'app_consumer_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'app_consumer_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'app_consumer_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oauth_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oauth_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oauth_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oauth_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oauth_token_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oauth_token_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oauth_token_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oauth_token_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtt_oauth_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtt_oauth_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtt_oauth_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtt_oauth_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bearer_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bearer_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bearer_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bearer_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtt_twitter_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtt_twitter_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtt_twitter_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtt_twitter_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbitly_shorturl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbitly_shorturl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbitly_shorturl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbitly_shorturl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_jd_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_jd_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_jd_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_jd_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpt_last_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpt_last_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpt_last_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpt_last_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_tweet_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_tweet_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_tweet_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_tweet_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_status_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_status_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_status_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_status_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_bluesky_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_bluesky_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_bluesky_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_bluesky_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpt_publishing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpt_publishing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpt_publishing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpt_publishing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_jd_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_jd_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_jd_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_jd_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_debug_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_debug_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_debug_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_debug_log'"
