#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rssopt_announce_feed_name'
wp option delete 'rssopt_announce_rss_link'
wp option delete 'rssopt_more_link_text'
wp option delete 'rssopt_full_rss_link'

