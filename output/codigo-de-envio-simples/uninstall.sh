#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_tracking_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_tracking_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_tracking_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_tracking_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_tracking_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_tracking_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_tracking_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_tracking_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_tracking_courier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_tracking_courier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_tracking_courier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_tracking_courier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_tracking_code_sended'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_tracking_code_sended'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_tracking_code_sended'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_tracking_code_sended'"
