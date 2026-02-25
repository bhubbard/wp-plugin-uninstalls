#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'beans_post_meta_above_content'
wp option delete 'beans_remove_post_meta_above_content_checkbox'
wp option delete 'beans_post_meta_below_content'
wp option delete 'beans_remove_post_meta_below_content_checkbox'
wp option delete 'beans_split_footer_left'
wp option delete 'beans_remove_split_footer_left_checkbox'
wp option delete 'beans_split_footer_right'
wp option delete 'beans_remove_split_footer_right_checkbox'
wp option delete 'beans_center_footer'
wp option delete 'beans_show_center_footer_checkbox'

