#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xpro_cloud_templates'
wp option delete '_xpro_cloud_templats'
wp option delete 'xpro_beaver_addons_options'
wp option delete '_fl_builder_xpro_cloud_templates'

# Delete Transients
wp transient delete 'xpro_cloud_transient'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_template_global'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_template_global'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_template_global'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_template_global'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
