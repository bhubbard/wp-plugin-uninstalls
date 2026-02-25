#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seo_toolkit_title'
wp option delete 'seo_toolkit_title_separator'
wp option delete 'seo_toolkit_description'
wp option delete 'seo_toolkit_description_default'
wp option delete 'seo_toolkit_robots'
wp option delete 'seo_toolkit_robots_paginated_pages'
wp option delete 'seo_toolkit_robots_donot_implement_index'
wp option delete 'seo_toolkit_robots_feed_noindex'
wp option delete 'seo_toolkit_website'
wp option delete 'seo_toolkit_person'
wp option delete 'seo_toolkit_organization'
wp option delete 'seo_toolkit_webmasters'
wp option delete 'seo_toolkit_sitemaps_enabled'
wp option delete 'seo_toolkit_sitemaps_limit'
wp option delete 'seo_toolkit_sitemaps_images_enable'
wp option delete 'seo_toolkit_facebook_enabled'
wp option delete 'seo_toolkit_facebook'
wp option delete 'seo_toolkit_twitter_enabled'
wp option delete 'seo_toolkit_twitter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_toolkit_facebook_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_toolkit_facebook_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_toolkit_facebook_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_toolkit_facebook_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_toolkit_facebook_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_toolkit_facebook_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_toolkit_facebook_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_toolkit_facebook_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_toolkit_facebook_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_toolkit_facebook_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_toolkit_facebook_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_toolkit_facebook_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_toolkit_twitter_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_toolkit_twitter_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_toolkit_twitter_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_toolkit_twitter_card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_toolkit_twitter_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_toolkit_twitter_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_toolkit_twitter_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_toolkit_twitter_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_toolkit_twitter_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_toolkit_twitter_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_toolkit_twitter_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_toolkit_twitter_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_toolkit_twitter_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_toolkit_twitter_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_toolkit_twitter_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_toolkit_twitter_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_toolkit_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_toolkit_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_toolkit_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_toolkit_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_toolkit_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_toolkit_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_toolkit_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_toolkit_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_toolkit_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_toolkit_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_toolkit_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_toolkit_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_toolkit_robots_noarchive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_toolkit_robots_noarchive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_toolkit_robots_noarchive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_toolkit_robots_noarchive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_toolkit_robots_nosnippet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_toolkit_robots_nosnippet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_toolkit_robots_nosnippet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_toolkit_robots_nosnippet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_toolkit_robots_noimageindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_toolkit_robots_noimageindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_toolkit_robots_noimageindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_toolkit_robots_noimageindex'"
