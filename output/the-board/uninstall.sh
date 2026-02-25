#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tb_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tb_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tb_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tb_photo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tb_lastname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tb_lastname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tb_lastname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tb_lastname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tb_firstname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tb_firstname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tb_firstname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tb_firstname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tb_hierarchy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tb_hierarchy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tb_hierarchy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tb_hierarchy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'hideit_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'hideit_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'hideit_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'hideit_%'"
