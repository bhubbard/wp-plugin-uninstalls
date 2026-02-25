#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsi_configuracion'
wp option delete 'max_image_size_control_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsi_foto_lista'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsi_foto_lista'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsi_foto_lista'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsi_foto_lista'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
