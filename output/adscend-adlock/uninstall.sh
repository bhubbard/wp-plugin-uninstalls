#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'am_codesnippet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'am_codesnippet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'am_codesnippet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'am_codesnippet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'am_active_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'am_active_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'am_active_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'am_active_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'am_sub_id_input'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'am_sub_id_input'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'am_sub_id_input'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'am_sub_id_input'"
