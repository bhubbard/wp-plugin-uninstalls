#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency_pos'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cms-landingpage-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cms-landingpage-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cms-landingpage-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cms-landingpage-data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cms-landingpage-analytics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cms-landingpage-analytics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cms-landingpage-analytics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cms-landingpage-analytics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sli_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sli_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sli_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sli_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sli_account_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sli_account_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sli_account_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sli_account_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sli_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sli_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sli_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sli_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sli_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sli_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sli_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sli_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sli_bio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sli_bio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sli_bio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sli_bio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sli_custom_bio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sli_custom_bio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sli_custom_bio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sli_custom_bio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sli_profile_pic_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sli_profile_pic_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sli_profile_pic_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sli_profile_pic_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sli_custom_profile_pic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sli_custom_profile_pic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sli_custom_profile_pic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sli_custom_profile_pic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sli_media_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sli_media_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sli_media_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sli_media_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sli_follows_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sli_follows_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sli_follows_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sli_follows_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
