#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vsp_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vsp_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vsp_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vsp_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vsp_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vsp_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vsp_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vsp_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vsp_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vsp_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vsp_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vsp_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vsp_keyword'"
