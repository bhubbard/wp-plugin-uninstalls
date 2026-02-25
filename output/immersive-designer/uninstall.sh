#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'immdg_configurator_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'immdg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'immdg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'immdg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'immdg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'immersive-designer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'immersive-designer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'immersive-designer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'immersive-designer'"
