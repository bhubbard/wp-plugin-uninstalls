#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ed_file_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ed_file_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ed_file_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ed_file_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ed_file_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ed_file_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ed_file_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ed_file_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ed_permalink_structure_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ed_permalink_structure_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ed_permalink_structure_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ed_permalink_structure_notice'"
