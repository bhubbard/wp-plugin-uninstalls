#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lwp_cfdb_plugin_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'lwp_cfdb_activation_time'
wp option delete 'lwp_cfdb_spare_me'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'additional_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'additional_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'additional_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'additional_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'processed_fields_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'processed_fields_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'processed_fields_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'processed_fields_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lwp_cfdb_read_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lwp_cfdb_read_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lwp_cfdb_read_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lwp_cfdb_read_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lwp_cfdb_read_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lwp_cfdb_read_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lwp_cfdb_read_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lwp_cfdb_read_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lwp_cfdb_contact_form_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lwp_cfdb_contact_form_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lwp_cfdb_contact_form_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lwp_cfdb_contact_form_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lwp_cfdb_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lwp_cfdb_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lwp_cfdb_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lwp_cfdb_page_id'"
