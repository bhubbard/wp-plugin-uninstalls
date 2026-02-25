#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_evav_require_for'
wp option delete '_evav_always_verify'
wp option delete '_evav_pagetargeting_option'
wp option delete '_evav_ajax_check'
wp option delete '_evav_adult_type'
wp option delete '_evav_user_age_verify_option_title'
wp option delete '_evav_heading'
wp option delete '_evav_disclaimer'
wp option delete 'easy-age-verify'
wp option delete '_evav_minimum_age'
wp option delete '_evav_cookie_duration'
wp option delete '_evav_membership'
wp option delete '_evav_input_type'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'woocommerce_shop_page_id'
wp option delete '_evav_overlay_color'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_evav_needs_verify'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_evav_needs_verify'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_evav_needs_verify'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_evav_needs_verify'"
