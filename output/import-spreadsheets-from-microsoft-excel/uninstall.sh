#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'ims-fme-ssc-admin-notice-disallowed-file-error'
wp transient delete 'ims-fme-ssc-admin-notice-plug-error'
wp transient delete 'ims-fme-ssc-admin-notice-zip-error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_custom_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_custom_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_custom_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_custom_attachment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_custom_attachment_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_custom_attachment_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_custom_attachment_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_custom_attachment_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_custom_attachment_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_custom_attachment_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_custom_attachment_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_custom_attachment_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_title'"
