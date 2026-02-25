#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wgs_security_code'
wp option delete '_wgs_troubleshoot_mode_theme'
wp option delete '_wgs_troubleshoot_mode_plugins'
wp option delete '_wgs_security_nonce'
wp option delete 'wgs_restore_points'
wp option delete 'wgs_backup_constants'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgs_troubleshoot_mode_verify'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgs_troubleshoot_mode_verify'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgs_troubleshoot_mode_verify'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgs_troubleshoot_mode_verify'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgs_troubleshoot_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgs_troubleshoot_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgs_troubleshoot_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgs_troubleshoot_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgs_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgs_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgs_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgs_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgs_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgs_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgs_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgs_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgs_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgs_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgs_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgs_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgs_user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgs_user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgs_user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgs_user_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgs_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgs_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgs_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgs_last_login'"
