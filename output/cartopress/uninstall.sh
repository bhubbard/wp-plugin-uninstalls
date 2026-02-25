#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cartopress_admin_options'
wp option delete 'cartopress_custom_fields'
wp option delete 'cartopress_cartodb_verified'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp_post_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp_post_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp_post_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp_post_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp_post_geo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp_post_geo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp_post_geo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp_post_geo_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp_post_donotsync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp_post_donotsync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp_post_donotsync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp_post_donotsync'"
