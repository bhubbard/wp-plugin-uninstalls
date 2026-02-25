#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vgse_columns_used_counter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_migrated'"
wp option delete 'vgse_user_path_sent'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_path'"
wp option delete 'vgse_dismiss_review_tip'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_counter'"
wp option delete 'vgse_secret_key'
wp option delete 'vgse_toolbar_cache_seed'
wp option delete 'vgse_disable_quick_setup'
wp option delete 'vgse_editions_counter'
wp option delete 'vgse_processed_counter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vgse_hide_whats_new_%'"
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'wpse_daily_cron'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventTimezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventTimezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventTimezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventTimezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventTimezoneAbbr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventTimezoneAbbr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventTimezoneAbbr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventTimezoneAbbr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventEndDateUTC'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventEndDateUTC'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventEndDateUTC'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventEndDateUTC'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventDuration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventDuration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventDuration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventDuration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventOrganizerID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventOrganizerID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventOrganizerID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventOrganizerID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vgse_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vgse_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vgse_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vgse_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpse_has_saved_sheet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpse_has_saved_sheet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpse_has_saved_sheet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpse_has_saved_sheet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpse_external_file_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpse_external_file_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpse_external_file_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpse_external_file_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
