#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'umwpuf_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'umwpuf_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'umwpuf_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'umwpuf_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'umwpuf_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'umwpuf_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'umwpuf_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'umwpuf_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'umwpuf_post_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'umwpuf_post_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'umwpuf_post_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'umwpuf_post_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_can_have_this_tab_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_can_have_this_tab_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_can_have_this_tab_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_can_have_this_tab_roles'"
