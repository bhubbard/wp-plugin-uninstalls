#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_wp_realtime_sitemap_settings'
wp option delete 'plugin_wp_realtime_sitemap_version'
wp option delete 'wp_realtime_sitemap_orderby'
wp option delete 'wp_realtime_sitemap_private'
wp option delete 'wp_realtime_sitemap_pages'
wp option delete 'wp_realtime_sitemap_posts'
wp option delete 'wp_realtime_sitemap_tags'
wp option delete 'wp_realtime_sitemap_archives'
wp option delete 'wp_realtime_sitemap_displayorder'
wp option delete 'wp_realtime_sitemap_showprivate'
wp option delete 'wp_realtime_sitemap_showpages'
wp option delete 'wp_realtime_sitemap_showposts'
wp option delete 'wp_realtime_sitemap_showarchives'
wp option delete 'wp_realtime_sitemap_showcategories'
wp option delete 'wp_realtime_sitemap_showcategoriesastc'
wp option delete 'wp_realtime_sitemap_showtags'
wp option delete 'wp_realtime_sitemap_showtagsastc'

