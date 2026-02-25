#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kcsg_kp_page_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kcsg_kp_page_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kcsg_kp_page_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kcsg_kp_page_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kcsg_kp_gtmid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kcsg_kp_gtmid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kcsg_kp_gtmid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kcsg_kp_gtmid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kcsg_kp_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kcsg_kp_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kcsg_kp_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kcsg_kp_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kcsg_kp_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kcsg_kp_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kcsg_kp_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kcsg_kp_cache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
