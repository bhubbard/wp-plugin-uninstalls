#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wde_disabled_widgets'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%editor_hover'"
wp option delete 'widget_detector_elementor_reviews_installed_on'
wp option delete 'widget_detector_elementor_total_open_count'
wp option delete 'wde_editor_hover'
wp option delete 'recently_activated'
wp option delete 'winter_mvc_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_widget_detector_elementor_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_widget_detector_elementor_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_widget_detector_elementor_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_widget_detector_elementor_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_widget_detector_elementor_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_widget_detector_elementor_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_widget_detector_elementor_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_widget_detector_elementor_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_widget_detector_elementor_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_widget_detector_elementor_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_widget_detector_elementor_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_widget_detector_elementor_reviews_already_did'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
