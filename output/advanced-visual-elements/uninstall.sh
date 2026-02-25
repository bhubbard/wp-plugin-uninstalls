#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adv_vis_ele_auto_play_library_videos'
wp option delete 'adv_vis_ele_global_mobile_breakpoint'
wp option delete 'adv_vis_ele_enable_default_meta_viewport'
wp option delete 'adv_vis_ele_delete_settings_on_uninstall'
wp option delete 'adv_vis_ele_disable_admin_commands_frontend'
wp option delete 'adv_vis_ele_library_info_v2'
wp option delete 'adv_vis_ele_library_info'
wp option delete 'adv_vis_ele_installed_elements'
wp option delete 'adv_vis_ele_library_version'
wp option delete 'adv_vis_ele_site_url'
wp option delete 'adv_vis_ele_library_info_new'
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adv-vis-ele-element_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adv-vis-ele-element_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adv-vis-ele-element_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adv-vis-ele-element_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adv-vis-ele-custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adv-vis-ele-custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adv-vis-ele-custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adv-vis-ele-custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adv-vis-ele-mobile_breakpoint'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adv-vis-ele-mobile_breakpoint'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adv-vis-ele-mobile_breakpoint'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adv-vis-ele-mobile_breakpoint'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adv-vis-ele-disable_on_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adv-vis-ele-disable_on_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adv-vis-ele-disable_on_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adv-vis-ele-disable_on_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adv-vis-ele-container_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adv-vis-ele-container_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adv-vis-ele-container_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adv-vis-ele-container_styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adv-vis-ele-container_styles_vertical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adv-vis-ele-container_styles_vertical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adv-vis-ele-container_styles_vertical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adv-vis-ele-container_styles_vertical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adv-vis-ele-editor-settings-preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adv-vis-ele-editor-settings-preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adv-vis-ele-editor-settings-preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adv-vis-ele-editor-settings-preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adv-vis-ele-editor-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adv-vis-ele-editor-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adv-vis-ele-editor-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adv-vis-ele-editor-settings'"
