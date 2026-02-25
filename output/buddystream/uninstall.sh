#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buddystream_321'
wp option delete 'buddystream_license_key'
wp option delete 'buddystream_30'
wp option delete 'buddystream_init_settings'
wp option delete 'buddystream_social_albums'
wp option delete 'buddystream_group_sharing'
wp option delete 'buddystream_2512'
wp option delete 'buddystream_facebook_privacy_setting'
wp option delete 'buddystream_installed_version'
wp option delete 'buddystream_26'
wp option delete 'buddystream_cronservices_uniquekey'
wp option delete 'buddystream_importers_queue'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_power'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_import'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_setup'"
wp option delete 'bs_flickr_api_key'
wp option delete 'buddystream_flickr_user_settings_maximport'
wp option delete 'buddystream_flickr_setup'
wp option delete 'buddystream_instagram_consumer_key'
wp option delete 'buddystream_instagram_consumer_secret'
wp option delete 'buddystream_instagram_user_settings_maximport'
wp option delete 'buddystream_instagram_map_width'
wp option delete 'buddystream_instagram_map_height'
wp option delete 'buddystream_instagram_map_zoom'
wp option delete 'buddystream_instagram_setup'
wp option delete 'buddystream_instagram_import'
wp option delete 'buddystream_lastfm_user_settings_maximport'
wp option delete 'buddystream_lastfm_setup'
wp option delete 'tweetstream_consumer_key'
wp option delete 'buddystream_twitter_export'
wp option delete 'tweetstream_consumer_secret'
wp option delete 'tweetstream_user_settings_syncbp'
wp option delete 'tweetstream_filter'
wp option delete 'tweetstream_filterexplicit'
wp option delete 'tweetstream_filter_show'
wp option delete 'buddystream_twitter_user_settings_maximport'
wp option delete 'buddystream_twitter_setup'
wp option delete 'buddystream_twitter_import'
wp option delete 'buddystream_youtube_user_settings_maximport'
wp option delete 'buddystream_youtube_setup'
wp option delete 'buddystream_importers'
wp option delete 'buddystream_nobuddybox'
wp option delete 'buddystream_nocss'
wp option delete 'buddystream_nolocation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_share'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_settings_maximport'"
wp option delete 'buddystream_social_albums_profile_navigation'
wp option delete 'buddystream_tour'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bs_flickr_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bs_flickr_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bs_flickr_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bs_flickr_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buddystream_instagram_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buddystream_instagram_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buddystream_instagram_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buddystream_instagram_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buddystream_instagram_synctoac'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buddystream_instagram_synctoac'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buddystream_instagram_synctoac'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buddystream_instagram_synctoac'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buddystream_instagram_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buddystream_instagram_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buddystream_instagram_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buddystream_instagram_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buddystream_instagram_tokensecret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buddystream_instagram_tokensecret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buddystream_instagram_tokensecret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buddystream_instagram_tokensecret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buddystream_instagram_tokensecret_temp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buddystream_instagram_tokensecret_temp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buddystream_instagram_tokensecret_temp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buddystream_instagram_tokensecret_temp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buddystream_instagram_token_temp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buddystream_instagram_token_temp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buddystream_instagram_token_temp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buddystream_instagram_token_temp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buddystream_instagram_achievements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buddystream_instagram_achievements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buddystream_instagram_achievements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buddystream_instagram_achievements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bs_lastfm_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bs_lastfm_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bs_lastfm_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bs_lastfm_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buddystream_linkedin_reauth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buddystream_linkedin_reauth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buddystream_linkedin_reauth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buddystream_linkedin_reauth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_tokensecret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_tokensecret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_tokensecret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_tokensecret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_synctoac'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_synctoac'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_synctoac'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_synctoac'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_tweetstream_synctoac'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_tweetstream_synctoac'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_tweetstream_synctoac'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_tweetstream_synctoac'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_screenname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_screenname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_screenname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_screenname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_lastupdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_lastupdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_lastupdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_lastupdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_deletetweet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_deletetweet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_deletetweet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_deletetweet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_checkboxon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_checkboxon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_checkboxon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_checkboxon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_counterdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_counterdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_counterdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_counterdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_filtermentions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_filtermentions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_filtermentions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_filtermentions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_daycounter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_daycounter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_daycounter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_daycounter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_filtergood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_filtergood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_filtergood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_filtergood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_filterbad'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_filterbad'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_filterbad'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_filterbad'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_filtertoactivity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_filtertoactivity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_filtertoactivity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_filtertoactivity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_filtertotwitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_filtertotwitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_filtertotwitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_filtertotwitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_profilelink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_profilelink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_profilelink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_profilelink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buddystream_twitter_reauth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buddystream_twitter_reauth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buddystream_twitter_reauth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buddystream_twitter_reauth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_tokensecret_temp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_tokensecret_temp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_tokensecret_temp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_tokensecret_temp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_token_temp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_token_temp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_token_temp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_token_temp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_mention'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_mention'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_mention'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_mention'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_token_secret_temp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_token_secret_temp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_token_secret_temp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_token_secret_temp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tweetstream_achievements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tweetstream_achievements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tweetstream_achievements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tweetstream_achievements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bs_youtube_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bs_youtube_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bs_youtube_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bs_youtube_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buddystream_blacklist_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buddystream_blacklist_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buddystream_blacklist_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buddystream_blacklist_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_counterdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_counterdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_counterdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_counterdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_daycounter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_daycounter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_daycounter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_daycounter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facestream_achievements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facestream_achievements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facestream_achievements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facestream_achievements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'buddystream_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'buddystream_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'buddystream_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'buddystream_%'"
