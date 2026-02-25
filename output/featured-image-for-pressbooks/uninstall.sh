#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pressbooks_theme_options_web'
wp option delete 'fifp_disable_for_mobile'
wp option delete '_ext_source_id'
wp option delete 'fifp_import_fi_to_clones_button_callback'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_ext_source_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_ext_source_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_ext_source_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_ext_source_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pb_is_based_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pb_is_based_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pb_is_based_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pb_is_based_on'"
