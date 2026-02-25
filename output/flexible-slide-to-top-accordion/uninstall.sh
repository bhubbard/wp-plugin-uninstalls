#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'accordion_post_type_selected'
wp option delete 'choose_style'
wp option delete 'accordion_lightbox'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accordion_fancy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accordion_fancy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accordion_fancy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accordion_fancy'"
