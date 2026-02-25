#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vwg_settings_group'
wp option delete 'vwg_uninstall_settings_group'
wp option delete 'vwg_settings_icon'
wp option delete 'vwg_settings_custom_svg_icon'
wp option delete 'vwg_settings_icon_color'
wp option delete 'vwg_settings_video_controls'
wp option delete 'vwg_settings_loop'
wp option delete 'vwg_settings_muted'
wp option delete 'vwg_settings_autoplay'
wp option delete 'vwg_settings_show_first'
wp option delete 'vwg_settings_video_adapt_sizes'
wp option delete 'vwg_settings_optimized_thumbnails'
wp option delete 'vwg_settings_convert_on_upload'
wp option delete 'vwg_settings_remove_settings_data'
wp option delete 'vwg_settings_remove_videos_data'
wp option delete 'vwg_pro_settings'
wp option delete 'vwg_monthly_notice_dismissed'
wp option delete 'abl_vwg_version'

# Clear Cron Jobs
wp cron event delete 'vwg_monthly_admin_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vwg_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vwg_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vwg_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vwg_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
