#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-notices'"
wp option delete 'bulkProcessingStatus'
wp option delete 'spio_site_delivery'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'spio_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'jetpack_active_modules'
wp option delete 'litespeed.conf.img_optm-webp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'wp-short-pixel-bulk-previous-percent'
wp option delete 'wp-short-pixel-activation-date'
wp option delete 'wp-short-pixel-current-total-files'
wp option delete 'wp-short-pixel-activation-notice'
wp option delete 'wp-short-pixel-bulk-last-status'
wp option delete 'wp-short-pixel-remove-settings-on-delete-plugin'

# Delete Transients
wp transient delete 'spio_settings_ai_example'
wp transient delete 'spio_settings_ai_example_id'
wp transient delete 'bulk-secret'
wp transient delete 'othermedia_refresh_folder_delay'
wp transient delete 'avif_server_check'
wp transient delete 'quotaData'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shortpixel_alt_requests'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shortpixel_alt_requests'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shortpixel_alt_requests'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shortpixel_alt_requests'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shortpixel_was_converted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shortpixel_was_converted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shortpixel_was_converted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shortpixel_was_converted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_media_library_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_media_library_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_media_library_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_media_library_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shortpixel_prevent_optimize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shortpixel_prevent_optimize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shortpixel_prevent_optimize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shortpixel_prevent_optimize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shortpixel_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shortpixel_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shortpixel_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shortpixel_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_frm_temporary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_frm_temporary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_frm_temporary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_frm_temporary'"
