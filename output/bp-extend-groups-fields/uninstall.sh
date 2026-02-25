#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fieldtype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fieldtype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fieldtype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fieldtype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gf_advanced_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gf_advanced_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gf_advanced_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gf_advanced_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'group_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'group_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'group_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'group_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__order'"
