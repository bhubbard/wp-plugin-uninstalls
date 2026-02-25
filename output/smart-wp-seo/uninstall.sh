#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qHomepage'
wp option delete 'qPosts'
wp option delete 'qPages'
wp option delete 'qTags'
wp option delete 'qzip'
wp option delete 'qgoogle'
wp option delete 'qask'
wp option delete 'qbing'
wp option delete 'qyandex'
wp option delete 'sws_images_alt'
wp option delete 'sws_images_title'
wp option delete 'sws_images_override'
wp option delete 'sws_images_override_title'
wp option delete 'sws_images_notice'
wp option delete 'qCategories'
wp option delete 'qArchives'
wp option delete 'qAuthor'
wp option delete 'smt_google_publisher_page'
wp option delete 'smt_google_varification'
wp option delete 'smt_bing_webmaster'
wp option delete 'smt_alexa_varification'
wp option delete 'smt_yandex_webmaster'
wp option delete 'smt_pinterest_webmaster'
wp option delete 'smt_facebookpage_url'
wp option delete 'smt_twitter_username'

# Clear Cron Jobs
wp cron event delete 'stm_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sws_post_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sws_post_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sws_post_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sws_post_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sws_post_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sws_post_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sws_post_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sws_post_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sws_post_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sws_post_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sws_post_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sws_post_keywords'"
