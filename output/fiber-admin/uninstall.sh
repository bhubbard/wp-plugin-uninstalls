#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fiber_admin_db_version'
wp option delete 'fiad_db_error'
wp option delete 'fiber_admin'
wp option delete 'fiad_miscellaneous'
wp option delete 'fiad_cpo'
wp option delete 'fiad_duplicate'
wp option delete 'fiber-admin-white-label'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
