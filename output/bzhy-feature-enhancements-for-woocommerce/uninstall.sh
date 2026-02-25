#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bzhy_gdpr_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu_slug'"
