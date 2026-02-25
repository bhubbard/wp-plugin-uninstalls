#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wprabt_show_posts'
wp option delete 'wprabt_post_category'
wp option delete 'wprabt_order_posts'
wp option delete 'wprabt_slider_mode'
wp option delete 'wprabt_post_link'
wp option delete 'wprabt_img_width'
wp option delete 'wprabt_img_height'

