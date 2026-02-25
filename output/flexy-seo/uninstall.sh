#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wps#cron-events'
wp option delete 'wps'

# Delete Transients
wp transient delete 'doing_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfs_metaterm_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfs_metaterm_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfs_metaterm_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfs_metaterm_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfs_metaterm_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfs_metaterm_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfs_metaterm_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfs_metaterm_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
