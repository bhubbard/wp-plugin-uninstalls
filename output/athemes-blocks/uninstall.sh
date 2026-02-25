#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'athemes_blocks_enabled_blocks'
wp option delete 'athemes_blocks_dashboard_settings'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'downloaded_font_files'
wp option delete 'widget_block'

# Clear Cron Jobs
wp cron event delete 'delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atb_dashboard_notifications_latest_read'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atb_dashboard_notifications_latest_read'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atb_dashboard_notifications_latest_read'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atb_dashboard_notifications_latest_read'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
