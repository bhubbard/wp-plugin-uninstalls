#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pgc_sgb_album_shc_preset'
wp option delete 'pgc_sgb_galleries_base'
wp option delete 'pgc_sgb_archive_galleries_base'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'pgc_sgb_global_lightbox_use'
wp option delete 'pgc_sgb_tags_list'
wp option delete 'pgc_sgb_version'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgc_preset_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgc_preset_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgc_preset_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgc_preset_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgc_preset_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgc_preset_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgc_preset_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgc_preset_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pgc_sgb_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pgc_sgb_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pgc_sgb_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pgc_sgb_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pgc_sgb_lightbox_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pgc_sgb_lightbox_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pgc_sgb_lightbox_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pgc_sgb_lightbox_settings'"
