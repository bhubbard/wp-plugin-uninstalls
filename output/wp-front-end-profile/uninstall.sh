#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wpfep_page_created'
wp option delete 'wpfep_profile'
wp option delete 'wpfep_pages'
wp option delete 'wpfep_general'
wp option delete 'wpfep_uninstall'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpfep_db_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'wpfep_Ask_Review_Date'
wp option delete 'wpfep_Install_Time'
wp option delete 'wpfep_install_time'
wp option delete 'wpfep_roles_editor_capabilities'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfep_user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfep_user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfep_user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfep_user_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verify'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verify'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verify'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verify'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_to_be_activated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_to_be_activated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_to_be_activated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_to_be_activated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpfep_user_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpfep_user_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpfep_user_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpfep_user_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfep_role_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfep_role_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfep_role_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfep_role_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpfep_activation_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpfep_activation_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpfep_activation_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpfep_activation_key'"
