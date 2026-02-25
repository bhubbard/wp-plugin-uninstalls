#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vpr_conditions_enabled'
wp option delete 'vpr_hide_restricted_posts_from_menus'
wp option delete 'vpr_whitelisted_roles'
wp option delete 'vpr_what_happens_when_post_is_restricted'
wp option delete 'vpr_error_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'vc_wc_cr_variations_per_country_tab_product_select_country_setting'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

