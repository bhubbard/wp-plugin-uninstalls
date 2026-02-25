#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ajax_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ajax_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ajax_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ajax_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ajaxd_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ajaxd_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ajaxd_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ajaxd_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ajaxd_no_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ajaxd_no_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ajaxd_no_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ajaxd_no_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ajaxd_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ajaxd_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ajaxd_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ajaxd_layout'"
