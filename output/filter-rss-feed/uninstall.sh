#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_by_post_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'filter_rss_feed_settings_filter_%'"
wp option delete 'filter_rss_feed_settings_add_more_post_types_to_main_query'
wp option delete 'filter_rss_feed_settings_filter_rss_feed'
wp option delete 'filter_rss_feed_settings_what_post_types_to_show_on_main_query'

