#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'speedup4cn'

# Delete Transients
wp transient delete 'bing_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_welcome_panel'"
