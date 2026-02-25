#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_number_of_posts'
wp option delete 'show_date'
wp option delete 'show_new_gif'
wp option delete 'new_gif_post_count'

