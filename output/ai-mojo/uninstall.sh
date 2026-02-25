#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api'"
wp option delete 'wpaimojo'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%chat_personas'"

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%has_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%has_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%has_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%has_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%panel_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%panel_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%panel_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%panel_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%quick_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%quick_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%quick_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%quick_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%wizard_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%wizard_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%wizard_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%wizard_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%current_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%current_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%current_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%current_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_results'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%contents_introduction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%contents_introduction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%contents_introduction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%contents_introduction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%contents_outlines'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%contents_outlines'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%contents_outlines'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%contents_outlines'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%contents_conclusion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%contents_conclusion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%contents_conclusion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%contents_conclusion'"
