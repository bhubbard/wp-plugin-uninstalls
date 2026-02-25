#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_project_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_project_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_project_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_project_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_project_client'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_project_client'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_project_client'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_project_client'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_project_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_project_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_project_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_project_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_project_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_project_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_project_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_project_url'"
