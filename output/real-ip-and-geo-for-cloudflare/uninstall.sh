#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf_connecting_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf_connecting_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf_connecting_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf_connecting_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf_ipcountry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf_ipcountry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf_ipcountry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf_ipcountry'"
