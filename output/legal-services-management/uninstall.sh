#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_private_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_private_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_private_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_private_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advocate_experience'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advocate_experience'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advocate_experience'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advocate_experience'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'practicing_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'practicing_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'practicing_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'practicing_fields'"
