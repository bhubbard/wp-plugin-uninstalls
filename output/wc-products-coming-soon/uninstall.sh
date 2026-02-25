#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pcs_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pcs_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pcs_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pcs_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pcs_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pcs_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pcs_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pcs_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pcs_show_countdown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pcs_show_countdown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pcs_show_countdown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pcs_show_countdown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pcs_available_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pcs_available_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pcs_available_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pcs_available_date'"
