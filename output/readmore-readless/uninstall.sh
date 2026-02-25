#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rmrl_meta_box_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rmrl_meta_box_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rmrl_meta_box_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rmrl_meta_box_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rmrl_meta_box_check_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rmrl_meta_box_check_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rmrl_meta_box_check_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rmrl_meta_box_check_box'"
