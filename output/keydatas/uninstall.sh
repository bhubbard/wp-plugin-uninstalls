#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'keydatas_password'
wp option delete 'keydatas_title_unique'
wp option delete 'keydatas_tbk_link_enble'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbk_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbk_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbk_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbk_link'"
