#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tugna_plugin_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tugna_category_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tugna_category_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tugna_category_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tugna_category_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
