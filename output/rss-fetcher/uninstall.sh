#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_rss_feeds'
wp option delete 'wp_rss_fetcher_imported'

