#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disable_rss_feeds'
wp option delete 'disable_comments_on_pages'
wp option delete 'disable_comments_on_posts'

