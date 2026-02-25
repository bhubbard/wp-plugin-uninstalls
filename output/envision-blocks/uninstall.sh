#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'envision-blocks-widget-%'"
wp option delete 'envision_blocks_integrations_settings'
wp option delete 'envision_blocks_settings_settings'
wp option delete '_envision_blocks_elementor_defaults'
wp option delete 'envision-blocks-widget-dark-mode'
wp option delete 'envision-blocks-widget-offcanvas'
wp option delete 'envision-blocks-menu-icon'
wp option delete 'envision-blocks-widget-nav-menu'
wp option delete 'envision-blocks-widget-menu-icon'
wp option delete 'elementor_cpt_support'
wp option delete '_elementor_editor_upgrade_notice_dismissed'
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'
wp option delete 'elementor_unfiltered_files_upload'
wp option delete 'yith_wcwl_show_on_loop'
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
