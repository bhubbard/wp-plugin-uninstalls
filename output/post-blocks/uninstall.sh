#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_post_blocks'
wp option delete 'post_blocks_css'
wp option delete 'post_blocks_remove_css'
wp option delete 'post_blocks_future_posts'
wp option delete 'post_blocks_date_one'
wp option delete 'post_blocks_date_one_inactive'
wp option delete 'post_blocks_date_two'
wp option delete 'post_blocks_date_two_inactive'

