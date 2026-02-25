#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amf_show_admin_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amf_show_admin_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amf_show_admin_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amf_show_admin_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amf_admin_menu_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amf_admin_menu_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amf_admin_menu_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amf_admin_menu_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amf_collapse_admin_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amf_collapse_admin_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amf_collapse_admin_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amf_collapse_admin_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amf_fixate_admin_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amf_fixate_admin_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amf_fixate_admin_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amf_fixate_admin_menu'"
