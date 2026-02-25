#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_tailor_icon_kits'
wp option delete '_tailor_editor_styles'
wp option delete 'jetpack_portfolio'
wp option delete 'jetpack_testimonial'
wp option delete 'tailor_version'
wp option delete 'tailor_previous_version'

# Delete Transients
wp transient delete 'tailor_control_definitions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tailor_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tailor_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tailor_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tailor_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
