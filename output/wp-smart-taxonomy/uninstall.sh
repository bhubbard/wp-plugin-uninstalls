#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dc_dc_WP_ST_general_settings_name'
wp option delete 'dc_WP_Smart_Taxonomy_installed'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smart_cat_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smart_cat_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smart_cat_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smart_cat_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smart_cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smart_cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smart_cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smart_cats'"
