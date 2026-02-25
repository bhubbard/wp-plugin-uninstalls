#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'kenta_blocks_dynamic_assets_posts'
wp option delete 'kb_plugin_version'
wp option delete 'downloaded_font_files'

# Delete Transients
wp transient delete 'kb-library-categories'
wp transient delete 'kb-library-categories-version'
wp transient delete 'kb-library-patterns'
wp transient delete 'kb-library-patterns-version'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kb_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kb_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kb_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kb_image_hash'"
