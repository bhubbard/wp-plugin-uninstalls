#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'extended_title_remover'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpetr_hide_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpetr_hide_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpetr_hide_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpetr_hide_title'"
