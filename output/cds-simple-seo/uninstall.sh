#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sseo_generate_sitemap'
wp option delete 'sseo_ganalytics'
wp option delete 'sseo_g4analytics'
wp option delete 'sseo_default_meta_description'
wp option delete 'sseo_default_meta_keywords'
wp option delete 'woocommerce_shop_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%'"
wp option delete 'sseo_fb_app_id'
wp option delete 'sseo_twitter_username'
wp option delete 'sseo_gsite_verification'
wp option delete 'sseo_baidu'
wp option delete 'sseo_bing'
wp option delete 'sseo_yandex'
wp option delete 'sseo_default_meta_title'
wp option delete 'sseo_sitemap_post_types'
wp option delete 'sseo_robot_noindex'
wp option delete 'sseo_robot_nofollow'
wp option delete 'sseo_fb_title'
wp option delete 'sseo_fb_description'
wp option delete 'sseo_fb_image'
wp option delete 'sseo_tw_title'
wp option delete 'sseo_tw_description'
wp option delete 'sseo_tw_image'
wp option delete 'sseo_canonical_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sseo_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sseo_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sseo_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sseo_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sseo_meta_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sseo_meta_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sseo_meta_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sseo_meta_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sseo_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sseo_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sseo_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sseo_canonical_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sseo_robot_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sseo_robot_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sseo_robot_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sseo_robot_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sseo_robot_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sseo_robot_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sseo_robot_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sseo_robot_nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sseo_fb_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sseo_fb_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sseo_fb_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sseo_fb_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sseo_fb_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sseo_fb_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sseo_fb_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sseo_fb_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sseo_fb_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sseo_fb_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sseo_fb_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sseo_fb_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sseo_tw_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sseo_tw_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sseo_tw_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sseo_tw_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sseo_tw_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sseo_tw_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sseo_tw_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sseo_tw_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sseo_tw_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sseo_tw_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sseo_tw_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sseo_tw_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sseo_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sseo_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sseo_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sseo_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sseo_fb_app_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sseo_fb_app_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sseo_fb_app_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sseo_fb_app_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sseo_twitter_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sseo_twitter_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sseo_twitter_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sseo_twitter_username'"
