#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aet_et_tracking_settings'
wp option delete 'aet_where_hear_about_us'
wp option delete 'aet_data_submited_in_sendiblue'
wp option delete 'selected_data_ua_et'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'selected_data_ua_%'"

# Delete Transients
wp transient delete '_aet_welcome_ecommerce_screen_activation_redirect_data'
wp transient delete 'aet-admin-notice'
wp transient delete 'aet_updated'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aet_dismiss_site_kit_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aet_dismiss_site_kit_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aet_dismiss_site_kit_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aet_dismiss_site_kit_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_id_wth_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_id_wth_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_id_wth_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_id_wth_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aet_placed_order_success'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aet_placed_order_success'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aet_placed_order_success'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aet_placed_order_success'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aet_ga_placed_order_success'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aet_ga_placed_order_success'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aet_ga_placed_order_success'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aet_ga_placed_order_success'"
