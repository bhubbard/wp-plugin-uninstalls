#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'watermark_manager_options'
wp option delete 'watermark_manager_image_watermark_options'
wp option delete 'watermark_manager_image_settings'
wp option delete 'watermark_manager_logging_enabled'
wp option delete 'WATERMARK_MANAGER_VERSION'
wp option delete 'watermark_manager_content_watermark_options'

# Clear Cron Jobs
wp cron event delete 'watermark_manager_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_watermark_manager_watermarked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_watermark_manager_watermarked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_watermark_manager_watermarked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_watermark_manager_watermarked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
