#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_dflip_settings'
wp option delete 'dflip_showratingdiv'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dflip_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dflip_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dflip_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dflip_data'"
