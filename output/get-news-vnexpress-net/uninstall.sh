#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gnv_add_menu_hk'
wp option delete 'some_other_option'
wp option delete 'option_etc'
wp option delete 'add_menu_hk'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link_get_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link_get_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link_get_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link_get_content'"
