#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'gopp_plugin_admin_notices'
wp transient delete 'gopp_plugin_poll_rpp'
wp transient delete 'gopp_image_gs_cmd_path'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
