#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iw_pc_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Identificador'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Identificador'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Identificador'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Identificador'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xPosition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xPosition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xPosition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xPosition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yPosition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yPosition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yPosition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yPosition'"
