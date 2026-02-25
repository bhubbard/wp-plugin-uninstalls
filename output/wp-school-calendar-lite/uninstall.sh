#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsc_options'
wp option delete 'wpsc_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'wpsc_flush_rules'
wp transient delete 'wpsc_import_data'
wp transient delete 'wpsc_import_remove_existing'
wp transient delete 'wpsc_pair_group_ids'
wp transient delete 'wpsc_pair_category_ids'
wp transient delete 'wpsc_pair_important_date_ids'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bgcolor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bgcolor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bgcolor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bgcolor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_calendar_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_calendar_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_calendar_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_calendar_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exclude_weekend'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exclude_weekend'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exclude_weekend'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exclude_weekend'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_additional_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_additional_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_additional_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_additional_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_recurring'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_recurring'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_recurring'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_recurring'"
