#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spg_options_group'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'wti_like_post_show_on_widget'
wp option delete 'wti_like_post_excluded_posts'

