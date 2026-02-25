#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'remove_rsd_link'
wp option delete 'remove_wp_generator'
wp option delete 'remove_feed_links'
wp option delete 'remove_feed_links_extra'
wp option delete 'remove_index_rel_link'
wp option delete 'remove_wlwmanifest_link'
wp option delete 'remove_parent_post_rel_link'
wp option delete 'remove_start_post_rel_link'
wp option delete 'remove_adjacent_posts_rel_link'
wp option delete 'remove_wp_shortlink_wp_head'

