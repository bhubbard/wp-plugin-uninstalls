#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpopus_recent_demo_url'
wp option delete 'wpopus_preload_enable'
wp option delete 'wpopus_preload_image'
wp option delete 'wpopus_preload_bg_color'
wp option delete 'wpopus_preload_image_width'
wp option delete 'wpopus_backtotop_enable'
wp option delete 'wpopus_backtotop_image'
wp option delete 'wpopus_backtotop_image_width'
wp option delete 'wpopus_backtotop_padding'
wp option delete 'wpopus_backtotop_bg_color'
wp option delete 'wpopus_backtotop_border'
wp option delete 'wpopus_backtotop_border_radius'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
