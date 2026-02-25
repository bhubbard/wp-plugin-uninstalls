#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thsab_remember_state'
wp option delete 'thsab_tab_position'
wp option delete 'thsab_tab_behavior'
wp option delete 'thsab_tab_background_color'
wp option delete 'thsab_tab_text_color'
wp option delete 'thsab_tab_persistence'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_admin_bar_front'"
