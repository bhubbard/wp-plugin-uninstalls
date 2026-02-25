#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'foogallery_albums_capabilities_set'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'foogallery_admin_rating_notice_dismiss'
wp option delete 'foogallery_admin_foobar_notice_dismiss'
wp option delete 'foogallery_capabilities_set'
wp option delete 'foo-video_licensekey'
wp option delete 'polylang'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'settings_errors'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_foogallery_custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_foogallery_custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_foogallery_custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_foogallery_custom_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_foogallery_custom_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_foogallery_custom_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_foogallery_custom_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_foogallery_custom_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_foogallery_custom_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_foogallery_custom_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_foogallery_custom_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_foogallery_custom_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'foogallery_crop_pos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'foogallery_crop_pos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'foogallery_crop_pos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'foogallery_crop_pos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'foogallery_override_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'foogallery_override_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'foogallery_override_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'foogallery_override_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_data-width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_data-width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_data-width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_data-width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_data-height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_data-height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_data-height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_data-height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_foobox_panning'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_foobox_panning'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_foobox_panning'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_foobox_panning'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_foogallery_override_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_foogallery_override_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_foogallery_override_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_foogallery_override_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_foogallery_override_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_foogallery_override_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_foogallery_override_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_foogallery_override_thumbnail'"
