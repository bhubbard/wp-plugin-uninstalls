#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blockons_default_options'
wp option delete 'blockons_options'
wp option delete 'active_sitewide_plugins'
wp option delete 'blockons_plugin_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_submission_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_submission_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_submission_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_submission_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_email_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_email_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_email_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_email_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bcc_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bcc_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bcc_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bcc_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_submission_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_submission_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_submission_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_submission_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_page_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_page_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_page_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_page_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_pattern_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_pattern_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_pattern_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_pattern_category'"
