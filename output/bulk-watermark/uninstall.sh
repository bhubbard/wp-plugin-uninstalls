#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bulk-watermark-settings'
wp option delete 'mywebsiteadvisor_pluigin_installer_menu_disable'
wp option delete 'watermark_on'
wp option delete 'watermark_type'
wp option delete 'watermark_text'
wp option delete 'watermark_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wporg_favorites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wporg_favorites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wporg_favorites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wporg_favorites'"
