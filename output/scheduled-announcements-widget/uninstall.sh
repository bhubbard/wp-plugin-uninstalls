#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'saw_scroll_options'
wp option delete 'saw_speed_options'
wp option delete 'saw_trans_options'
wp option delete 'saw_width_options'
wp option delete 'saw_height_options'
wp option delete 'saw_text_color_options'
wp option delete 'saw_link_color_options'
wp option delete 'saw_order_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'saw_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'saw_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'saw_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'saw_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'saw_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'saw_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'saw_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'saw_end_date'"
