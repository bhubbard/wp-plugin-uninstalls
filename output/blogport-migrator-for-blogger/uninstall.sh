#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blogport_red_v20'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blogport_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blogport_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blogport_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blogport_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pvc_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pvc_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pvc_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pvc_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'views'"
