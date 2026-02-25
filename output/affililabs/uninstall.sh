#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'affililabs_cleanup_on_uninstall'
wp option delete 'affililabs_cleanup_pending'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_salt'"
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
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_affl_associated_comparison_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_affl_associated_comparison_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_affl_associated_comparison_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_affl_associated_comparison_table'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_field_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_field_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_field_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_field_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_field_1_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_field_1_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_field_1_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_field_1_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_affl_applied_table_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_affl_applied_table_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_affl_applied_table_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_affl_applied_table_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_op3_ge_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_op3_ge_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_op3_ge_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_op3_ge_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_affl_applied_template_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_affl_applied_template_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_affl_applied_template_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_affl_applied_template_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_affl_template_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_affl_template_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_affl_template_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_affl_template_data'"
