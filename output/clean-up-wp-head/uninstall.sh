#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clean_up_rsd_link'
wp option delete 'clean_up_wlwmanifest_link'
wp option delete 'clean_up_wp_generator'
wp option delete 'clean_up_start_post_rel_link'
wp option delete 'clean_up_index_rel_link'
wp option delete 'clean_up_adjacent_posts_rel_link'
wp option delete 'clean_up_feed_links'
wp option delete 'clean_up_feed_links_extra'
wp option delete 'clean_up_feeds'
wp option delete 'easy_excerpt'

