#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_gt4sq_feed_url'
wp option delete 'wp_gt4sq_feed_count'
wp option delete 'wp_gt4sq_map_enable'
wp option delete 'wp_gt4sq_list_enable'
wp option delete 'wp_gt4sq_icon'
wp option delete 'wp_gt4sq_height'
wp option delete 'wp_gt4sq_width'
wp option delete 'wp_gt4sq_widget_map_enable'
wp option delete 'wp_gt4sq_widget_list_enable'
wp option delete 'wp_gt4sq_widget_title'
wp option delete 'wp_gt4sq_widget_width'
wp option delete 'wp_gt4sq_widget_height'

