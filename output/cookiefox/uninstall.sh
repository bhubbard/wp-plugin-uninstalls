#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cookiefox'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'always_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'always_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'always_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'always_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unblock_embeds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unblock_embeds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unblock_embeds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unblock_embeds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
