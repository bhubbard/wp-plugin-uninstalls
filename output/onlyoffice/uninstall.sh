#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'onlyoffice-plugin-uuid'
wp option delete 'onlyoffice-plugin-bytes'
wp option delete 'onlyoffice-formats'
wp option delete 'onlyoffice-formats-version'
wp option delete 'onlyoffice_settings'

# Delete Transients
wp transient delete 'settings_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
