#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unmam_settings'
wp option delete 'unmam_db_version'
wp option delete 'unmam_performance_history'
wp option delete 'options'
wp option delete 'wpseo_social'
wp option delete 'rank-math-options-titles'
wp option delete 'widget_block'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'aioms_settings'
wp option delete 'mui_settings'

# Clear Cron Jobs
wp cron event delete 'unmam_background_scan'
wp cron event delete 'unmam_process_batch'
wp cron event delete 'unmam_process_job'
wp cron event delete 'aioms_background_scan'
wp cron event delete 'mui_process_batch'
wp cron event delete 'mui_process_job'
wp cron event delete 'unmam_index_single_post'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mui_marked_safe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mui_marked_safe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mui_marked_safe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mui_marked_safe'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mui_marked_unused'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mui_marked_unused'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mui_marked_unused'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mui_marked_unused'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_screenshot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_screenshot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_screenshot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_screenshot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_facebook_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_facebook_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_facebook_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_facebook_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_facebook_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_facebook_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_facebook_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_facebook_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_twitter_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_twitter_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_twitter_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_twitter_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_og_image_custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_og_image_custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_og_image_custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_og_image_custom_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_twitter_image_custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_twitter_image_custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_twitter_image_custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_twitter_image_custom_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_social_fb_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_social_fb_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_social_fb_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_social_fb_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_social_twitter_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_social_twitter_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_social_twitter_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_social_twitter_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
