#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'timeline_express_no_icons_storage'
wp option delete 'timeline_express_installed_add_ons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_timeline_styles_icon_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_timeline_styles_icon_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_timeline_styles_icon_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_timeline_styles_icon_style'"
