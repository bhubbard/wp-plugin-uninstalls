#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_a_options'
wp option delete 'advancediFrameParameterData'
wp option delete 'advancediFrameAdminOptions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aip_%'"
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aip_cache_check_%' OR option_name LIKE '_site_transient_aip_cache_check_%'"
wp transient delete 'aip_discount'
wp transient delete 'aip_discount_message'
wp transient delete 'aip_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aip_%' OR option_name LIKE '_site_transient_aip_%'"
wp transient delete 'ai_no_rights_post_errors'
wp transient delete 'ai_save_post_errors'
wp transient delete 'ai_save_post_execution'
wp transient delete 'ai_save_post_unfiltered_html'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'ai_check_iframes_event'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'closedpostboxes_toplevel_page_advanced-iframe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'closedpostboxes_toplevel_page_advanced-iframe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'closedpostboxes_toplevel_page_advanced-iframe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'closedpostboxes_toplevel_page_advanced-iframe'"
