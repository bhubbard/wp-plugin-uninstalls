#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quickwebp_bulk_optimize_status'
wp option delete 'quickwebp_bulk_optimize_total'
wp option delete 'quickwebp_bulk_optimize_current'
wp option delete 'quickwebp_settings_conversion'
wp option delete 'quickwebp_settings_conversion_quality'
wp option delete 'quickwebp_settings_conversion_sharpen'
wp option delete 'quickwebp_settings_conversion_ignore_webp'
wp option delete 'quickwebp_settings_conversion_save_original'
wp option delete 'quickwebp_settings_resize'
wp option delete 'quickwebp_settings_resize_value'
wp option delete 'quickwebp_settings_completion'
wp option delete 'quickwebp_settings_completion_options'
wp option delete 'quickwebp_settings_cleanup'
wp option delete 'quickwebp_settings_library'
wp option delete 'quickwebp_settings_conversion_display_webp_mode'
wp option delete 'quickwebp_settings_paste_image'

# Clear Cron Jobs
wp cron event delete 'quickwebp_bulk_optimization_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quickwebp_already_optimized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quickwebp_already_optimized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quickwebp_already_optimized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quickwebp_already_optimized'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quickwebp_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quickwebp_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quickwebp_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quickwebp_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quickwebp_has_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quickwebp_has_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quickwebp_has_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quickwebp_has_error'"
