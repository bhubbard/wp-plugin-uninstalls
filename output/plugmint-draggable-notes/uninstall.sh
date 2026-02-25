#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdan_admin_notes_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdan_visibility_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdan_visibility_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdan_visibility_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdan_visibility_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdan_minimized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdan_minimized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdan_minimized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdan_minimized'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdan_order_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdan_order_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdan_order_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdan_order_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdan_checklist_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdan_checklist_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdan_checklist_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdan_checklist_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdan_color_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdan_color_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdan_color_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdan_color_meta'"
