#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scrgen_width'
wp option delete 'scrgen_height'
wp option delete 'scrgen_enable_cropping'
wp option delete 'scrgen_crop_left'
wp option delete 'scrgen_crop_top'
wp option delete 'scrgen_crop_width'
wp option delete 'scrgen_crop_height'
wp option delete 'scrgen_social_strategy'

# Clear Cron Jobs
wp cron event delete 'scrgen_update_post_screenshot'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scrgen_screenshot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scrgen_screenshot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scrgen_screenshot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scrgen_screenshot'"
