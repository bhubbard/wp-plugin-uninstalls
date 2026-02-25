#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom_post_list_post_type'
wp option delete 'custom_post_list_show_date'
wp option delete 'custom_post_list_show_featured_image'
wp option delete 'custom_post_list_show_pagination'
wp option delete 'custom_post_list_display_author'
wp option delete 'custom_post_list_show_no_of_posts'

