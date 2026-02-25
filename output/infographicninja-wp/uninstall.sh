#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'INFGJ_x_rapidapi_key'
wp option delete 'INFGJ_about_us'
wp option delete 'INFGJ_logo_url'
wp option delete 'INFGJ_company_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
