#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'woowgallery_version'
wp option delete 'woowgallery_install_date'
wp option delete 'woowgallery_options'
wp option delete 'woowgallery_notices'
wp option delete 'rewrite_rules'
wp option delete 'woowgallery_rest_token'
wp option delete 'instagram_access_token'
wp option delete 'instagram_token_updated'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_woowgallery_fetch_%' OR option_name LIKE '_site_transient_woowgallery_fetch_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_media_copyright'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_media_copyright'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_media_copyright'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_media_copyright'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woowgallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woowgallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woowgallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woowgallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woowgallery_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woowgallery_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woowgallery_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woowgallery_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woowgallery_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woowgallery_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woowgallery_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woowgallery_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woowgallery_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woowgallery_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woowgallery_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woowgallery_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_data_before'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_data_before'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_data_before'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_data_before'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woowgallery_galleries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woowgallery_galleries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woowgallery_galleries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woowgallery_galleries'"
