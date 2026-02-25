#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Delete Transients
wp transient delete 'vp_fontawesome_icons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eic_grid_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eic_grid_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eic_grid_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eic_grid_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
