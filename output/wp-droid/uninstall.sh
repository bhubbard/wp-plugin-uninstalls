#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_license_valid_droid'
wp option delete 'wp_license_droid_pushnotifications'
wp option delete 'wpdroid_one_signal_app_id'
wp option delete 'wpdroid_one_signal_rest_api_key'
wp option delete 'wp_license_droid_comments'
wp option delete 'wpdroid_allow_comments'
wp option delete 'wpdroid_article_featured_image'
wp option delete 'wpdroid_article_author_name'
wp option delete 'wpdroid_article_date_time_format'
wp option delete 'wp_license_droid_related_posts'
wp option delete 'wpdroid_show_related_posts'
wp option delete 'wpdroid_related_posts_based_on'
wp option delete 'wpdroid_related_posts_style'
wp option delete 'wpdroid_related_posts_scroll_position'
wp option delete 'wp_license_droid_admob'
wp option delete 'wpdroid_admob_banner_ad_unit_id'
wp option delete 'wpdroid_admob_bottom_ad_article'
wp option delete 'wpdroid_report_error'
wp option delete 'wpdroid_copy_post_link'
wp option delete 'wpdroid_open_in_browser'
wp option delete 'wp_license_droid_categories'
wp option delete 'wpdroid_article_show_category'
wp option delete 'wpdroid_url-to-id'
wp option delete 'wpdroid_app_custom_css'
wp option delete 'wpdroid_search_posts_img_url'
wp option delete 'wpdroid_search_posts_published_date'
wp option delete 'wpdroid_posts_feed_date_time_format'
wp option delete 'wpdroid_search_posts_author_name'
wp option delete 'wpdroid_search_posts_template'
wp option delete 'wpdroid_category_posts_img_url'
wp option delete 'wpdroid_category_posts_published_date'
wp option delete 'wpdroid_category_posts_author_name'
wp option delete 'wpdroid_categories_posts_template'
wp option delete 'wpdroid_latest_posts_img_url'
wp option delete 'wpdroid_latest_posts_published_date'
wp option delete 'wpdroid_latest_posts_author_name'
wp option delete 'wpdroid_latest_posts_template'
wp option delete 'wpdroid_article_open_screen'
wp option delete 'wpdroid_exclude_posts'
wp option delete 'wpdroid_invite_friends'
wp option delete 'wpdroid_invite_friends_text'
wp option delete 'wpdroid_bookmarked_posts_img_url'
wp option delete 'wpdroid_bookmarked_posts_published_date'
wp option delete 'wpdroid_bookmarked_posts_author_name'
wp option delete 'wpdroid_bookmarked_posts_template'
wp option delete 'wpdroid_posts_load_count'
wp option delete 'wp_license_droid_about'
wp option delete 'wp_license_droid_analytics'
wp option delete 'wpdroid_google_analytics_id'
wp option delete 'wpdroid_admob_bottom_ad_home'
wp option delete 'wp_license_droid_bookmarks'
wp option delete 'wpdroid_allow_bookmarks'
wp option delete 'wpdroid_exclude_categories'
wp option delete 'wp_droid_about_website'
wp option delete 'wp_droid_about_read_more'
wp option delete 'wp_droid_about_email'
wp option delete 'wp_droid_about_phone'
wp option delete 'wp_droid_social_linkedin'
wp option delete 'wp_droid_social_instagram'
wp option delete 'wp_droid_social_youtube'
wp option delete 'wp_droid_social_google_plus'
wp option delete 'wp_droid_social_twitter'
wp option delete 'wp_droid_social_facebook'
wp option delete 'wpdroid_comments_date_time_format'
wp option delete 'wpdroid_admob_bottom_ad_comments'
wp option delete 'wpdroid_api_key'
wp option delete 'wpdroid_package_name'
wp option delete 'wpdroid_send_notification_automatically'
wp option delete 'wpdroid_related_posts_count'
wp option delete 'wpdroid_related_posts_featured_image'
wp option delete 'wpdroid_related_post_author_name'
wp option delete 'wpdroid_related_post_date_time_format'
wp option delete 'wp_license_droid_plan'
wp option delete 'wp_license_droid_purchase_date'
wp option delete 'wp_license_droid_validuntil'
wp option delete 'media_selector_attachment_id'
wp option delete ' media_selector_attachment_id '
wp option delete 'media_selector_attachment_id_announcement'
wp option delete ' media_selector_attachment_id_announcement '
wp option delete 'wpdroid_last_validate_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdroid_meta_override_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdroid_meta_override_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdroid_meta_override_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdroid_meta_override_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdroid_meta_exclude_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdroid_meta_exclude_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdroid_meta_exclude_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdroid_meta_exclude_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdroid_meta_featured_image_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdroid_meta_featured_image_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdroid_meta_featured_image_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdroid_meta_featured_image_feed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdroid_meta_featured_image_article'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdroid_meta_featured_image_article'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdroid_meta_featured_image_article'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdroid_meta_featured_image_article'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdroid_meta_author_name_article'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdroid_meta_author_name_article'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdroid_meta_author_name_article'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdroid_meta_author_name_article'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdroid_meta_author_name_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdroid_meta_author_name_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdroid_meta_author_name_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdroid_meta_author_name_feed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdroid_meta_date_time_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdroid_meta_date_time_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdroid_meta_date_time_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdroid_meta_date_time_feed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdroid_meta_date_time_article'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdroid_meta_date_time_article'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdroid_meta_date_time_article'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdroid_meta_date_time_article'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdroid_meta_ad_mob_bottom_ad'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdroid_meta_ad_mob_bottom_ad'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdroid_meta_ad_mob_bottom_ad'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdroid_meta_ad_mob_bottom_ad'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdroid_meta_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdroid_meta_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdroid_meta_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdroid_meta_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdroid_meta_related_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdroid_meta_related_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdroid_meta_related_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdroid_meta_related_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdroid_meta_web_browser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdroid_meta_web_browser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdroid_meta_web_browser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdroid_meta_web_browser'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdroid_meta_layout_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdroid_meta_layout_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdroid_meta_layout_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdroid_meta_layout_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdroid_meta_send_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdroid_meta_send_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdroid_meta_send_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdroid_meta_send_notification'"
