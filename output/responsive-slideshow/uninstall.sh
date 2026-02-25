#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'responsive_slideshow_version'
wp option delete 'responsive_slideshow_settings'
wp option delete 'timer_settings'
wp option delete 'easing_settings'
wp option delete 'speed_settings'
wp option delete 'wa_rs_paging'
wp option delete 'wa_rs_posts_order'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slide_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slide_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slide_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slide_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'position_radio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'position_radio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'position_radio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'position_radio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'top_textarea'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'top_textarea'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'top_textarea'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'top_textarea'"
