#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kuegy_txtsitemap_last_updated'
wp option delete 'kuegy_txtsitemap_include_posts'
wp option delete 'kuegy_txtsitemap_include_pages'
wp option delete 'kuegy_txtsitemap_include_categories'
wp option delete 'kuegy_txtsitemap_ping_google'
wp option delete 'kuegy_txtsitemap_ping_bing'
wp option delete 'kuegy_txtsitemap_include_homepage'
wp option delete 'kuegy_txtsitemap_publish'
wp option delete 'kuegy_txtsitemap_save_post'

# Clear Cron Jobs
wp cron event delete 'kuegy_txtsitemap_event'

