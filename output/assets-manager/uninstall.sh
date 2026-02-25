#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'base_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'base_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'base_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'base_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
