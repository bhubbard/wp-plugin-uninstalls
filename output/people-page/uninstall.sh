#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'peeps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'peeps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'peeps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'peeps'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'photo'"
