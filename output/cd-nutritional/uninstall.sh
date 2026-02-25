#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'checkbox_field_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'checkbox_field_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'checkbox_field_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'checkbox_field_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'checkbox_extra_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'checkbox_extra_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'checkbox_extra_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'checkbox_extra_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'checkbox_in_body'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'checkbox_in_body'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'checkbox_in_body'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'checkbox_in_body'"
