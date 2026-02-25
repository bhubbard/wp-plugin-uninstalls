#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'transparent-watermark-settings'
wp option delete 'mywebsiteadvisor_pluigin_installer_menu_disable'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wporg_favorites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wporg_favorites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wporg_favorites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wporg_favorites'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_watermark_backups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_watermark_backups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_watermark_backups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_watermark_backups'"
