#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'optionsframework'
wp option delete 'icl_sitepress_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tb_breadcrumbs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tb_breadcrumbs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tb_breadcrumbs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tb_breadcrumbs'"
