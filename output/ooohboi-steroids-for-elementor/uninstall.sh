#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_experiment-container'
wp option delete 'steroids_for_elementor'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qquuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qquuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qquuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qquuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
