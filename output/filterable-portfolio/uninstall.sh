#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'filterable_portfolio'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_project_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_project_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_project_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_project_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_project_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_project_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_project_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_project_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_project_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_project_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_project_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_project_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
