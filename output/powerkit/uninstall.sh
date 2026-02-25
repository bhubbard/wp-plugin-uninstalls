#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'powerkit_toc_display'
wp option delete 'powerkit_toc_enable_automatically'
wp option delete 'powerkit_db_version'
wp option delete 'powerkit_enabled_headers_footers'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'powerkit_enabled_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'powerkit_connect_%'"
wp option delete 'powerkit_social_links_multiple_list'
wp option delete 'powerkit_mailchimp_token'
wp option delete 'powerkit_mailchimp_list'
wp option delete 'powerkit_connect_instagram_username'
wp option delete 'powerkit_connect_instagram_custom_name'
wp option delete 'powerkit_connect_instagram_following'
wp option delete 'powerkit_connect_instagram_custom_followers'
wp option delete 'powerkit_connect_instagram_custom_avatar'
wp option delete 'powerkit_connect_instagram_custom_avatar_2x'
wp option delete 'powerkit_connect_instagram_feed'
wp option delete 'powerkit_connect_facebook_app_id'
wp option delete 'powerkit_connect_twitter_username'
wp option delete 'powerkit_connect_twitter_custom_name'
wp option delete 'powerkit_connect_twitter_following'
wp option delete 'powerkit_connect_twitter_custom_followers'
wp option delete 'powerkit_connect_twitter_custom_avatar'
wp option delete 'powerkit_connect_twitter_custom_avatar_2x'
wp option delete 'powerkit_connect_twitter_feed'
wp option delete 'powerkit_connect_instagram_app_type'
wp option delete 'powerkit_connect_instagram_app_access_token'
wp option delete 'powerkit_connect_instagram_app_user_id'
wp option delete 'powerkit_connect_instagram_app_username'
wp option delete 'powerkit_connect_instagram_app_refresh_time'
wp option delete 'powerkit_connect_facebook_app_access_token'
wp option delete 'powerkit_connect_facebook_app_accounts'
wp option delete 'powerkit_connect_twitter_app_consumer_key'
wp option delete 'powerkit_connect_twitter_app_consumer_secret'
wp option delete 'powerkit_connect_twitter_app_user_id'
wp option delete 'powerkit_connect_twitter_app_screen_name'
wp option delete 'powerkit_connect_twitter_app_oauth_token'
wp option delete 'powerkit_connect_twitter_app_oauth_token_secret'
wp option delete 'powerkit_social_links_youtube_override'
wp option delete 'powerkit_social_links_facebook_override'
wp option delete 'powerkit_social_links_instagram_override'
wp option delete 'powerkit_custom_fonts_list'
wp option delete 'powerkit_custom_fonts_counter'
wp option delete 'powerkit_coming_soon_init'
wp option delete 'powerkit_coming_soon_page'
wp option delete 'powerkit_coming_soon_notice'
wp option delete 'powerkit_coming_soon_status'
wp option delete 'powerkit_coming_soon_httpcode'
wp option delete 'powerkit_facebook_enable_comments'
wp option delete 'powerkit_facebook_number_comments_callback'
wp option delete 'powerkit_facebook_location'
wp option delete 'powerkit_facebook_number_comments'
wp option delete 'powerkit_insert_header_code'
wp option delete 'powerkit_insert_footer_code'
wp option delete 'powerkit_justified_gallery_margins'
wp option delete 'powerkit_justified_gallery_row_height'
wp option delete 'powerkit_justified_gallery_max_row_height'
wp option delete 'powerkit_justified_gallery_last_row'
wp option delete 'powerkit_lazyload_csco_lqip'
wp option delete 'powerkit_lightbox_single_image_selectors'
wp option delete 'powerkit_lightbox_gallery_selectors'
wp option delete 'powerkit_lightbox_exclude_selectors'
wp option delete 'powerkit_lightbox_zoom_icon'
wp option delete 'powerkit_subscription_service'
wp option delete 'powerkit_mailchimp_double_optin'
wp option delete 'powerkit_kit_token'
wp option delete 'powerkit_kit_form'
wp option delete 'powerkit_mailerlite_token'
wp option delete 'powerkit_mailerlite_group'
wp option delete 'powerkit_custom_form_action'
wp option delete 'powerkit_custom_email_name'
wp option delete 'powerkit_custom_name_field'
wp option delete 'powerkit_custom_hidden_fields'
wp option delete 'powerkit_mailchimp_privacy'
wp option delete 'powerkit_pinit_image_selectors'
wp option delete 'powerkit_pinit_exclude_selectors'
wp option delete 'powerkit_pinit_only_hover'
wp option delete 'powerkit_featured_terms_added'
wp option delete 'powerkit_post_views_options'
wp option delete 'pk_post_views_activated_blogs'
wp option delete 'post_views_counter_activated_blogs'
wp option delete 'powerkit_retina_images_sizes'
wp option delete 'powerkit_share_buttons_recover'
wp option delete 'powerkit_share_buttons_bitly_api_token'
wp option delete 'powerkit_social_links_twitter_user'
wp option delete 'powerkit_slider_gallery_page_dots'
wp option delete 'powerkit_slider_gallery_page_info'
wp option delete 'powerkit_slider_gallery_nav'
wp option delete 'powerkit_social_links_order_multiple_list'
wp option delete 'powerkit_social_links_link_target'
wp option delete 'powerkit_social_links_nofollow'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'powerkit_social_links_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'powerkit_social_links_label_%'"
wp option delete 'powerkit_social_links_dribbble_user'
wp option delete 'powerkit_social_links_facebook_user'
wp option delete 'powerkit_social_links_instagram_user'
wp option delete 'powerkit_social_links_youtube_slug'
wp option delete 'powerkit_social_links_youtube_channel_type'
wp option delete 'powerkit_social_links_telegram_chat'
wp option delete 'powerkit_social_links_pinterest_user'
wp option delete 'powerkit_social_links_soundcloud_user_id'
wp option delete 'powerkit_social_links_vimeo_user'
wp option delete 'powerkit_social_links_behance_user'
wp option delete 'powerkit_social_links_github_user'
wp option delete 'powerkit_social_links_vk_id'
wp option delete 'powerkit_social_links_vk_type'
wp option delete 'powerkit_social_links_twitch_user_id'
wp option delete 'powerkit_social_links_flickr_user_id'
wp option delete 'powerkit_social_links_snapchat_user'
wp option delete 'powerkit_social_links_medium_user'
wp option delete 'powerkit_social_links_reddit_user'
wp option delete 'powerkit_social_links_reddit_type'
wp option delete 'powerkit_social_links_strava_user'
wp option delete 'powerkit_social_links_ok_slug'
wp option delete 'powerkit_social_links_ok_type'
wp option delete 'powerkit_social_links_linkedin_slug'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_backup_counter_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_backup_%'"
wp option delete 'powerkit_toc_title'
wp option delete 'powerkit_toc_exclude'
wp option delete 'powerkit_toc_depth'
wp option delete 'powerkit_toc_min_count'
wp option delete 'powerkit_toc_min_characters'
wp option delete 'powerkit_toc_btn_hide'
wp option delete 'powerkit_toc_default_state'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cap-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cap-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cap-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cap-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'powerkit_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'powerkit_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'powerkit_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'powerkit_featured_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'powerkit_post_format_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'powerkit_post_format_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'powerkit_post_format_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'powerkit_post_format_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'powerkit_post_format_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'powerkit_post_format_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'powerkit_post_format_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'powerkit_post_format_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'powerkit_post_format_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'powerkit_post_format_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'powerkit_post_format_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'powerkit_post_format_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'powerkit_post_format_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'powerkit_post_format_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'powerkit_post_format_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'powerkit_post_format_audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'powerkit_post_format_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'powerkit_post_format_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'powerkit_post_format_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'powerkit_post_format_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_powerkit_reading_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_powerkit_reading_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_powerkit_reading_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_powerkit_reading_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'powerkit_share_buttons_count_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'powerkit_share_buttons_count_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'powerkit_share_buttons_count_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'powerkit_share_buttons_count_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'powerkit_share_buttons_transient_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'powerkit_share_buttons_transient_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'powerkit_share_buttons_transient_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'powerkit_share_buttons_transient_%'"
