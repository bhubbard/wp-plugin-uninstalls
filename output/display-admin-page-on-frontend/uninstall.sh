#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfa_show_own_posts_migrated'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'wpfa_network_sites'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'wp_scheduled_auto_draft_delete'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vgfa_text_changes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vgfa_text_changes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vgfa_text_changes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vgfa_text_changes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfa_current_site_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfa_current_site_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfa_current_site_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfa_current_site_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vgfa_show_own_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vgfa_show_own_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vgfa_show_own_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vgfa_show_own_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vgfa_disabled_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vgfa_disabled_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vgfa_disabled_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vgfa_disabled_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_wpfa_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_wpfa_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_wpfa_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_wpfa_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vgfa_hidden_elements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vgfa_hidden_elements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vgfa_hidden_elements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vgfa_hidden_elements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vgfa_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vgfa_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vgfa_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vgfa_menu'"
