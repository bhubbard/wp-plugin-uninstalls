#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'showcursor'
wp option delete 'navigation'
wp option delete 'playspeed'
wp option delete 'framerate'
wp option delete 'enablespin'
wp option delete 'fullscreen'
wp option delete 'zoominout'
wp option delete 'drag'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp360view_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp360view_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp360view_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp360view_images'"
