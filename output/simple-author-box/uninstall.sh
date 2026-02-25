#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'saboxplugin_options'
wp option delete 'sab_version'

# Delete Transients
wp transient delete 'sab_error_msg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sabox_social_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sabox_social_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sabox_social_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sabox_social_links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sabox-profile-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sabox-profile-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sabox-profile-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sabox-profile-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_disable_sab_author_here'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_disable_sab_author_here'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_disable_sab_author_here'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_disable_sab_author_here'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sab_box_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sab_box_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sab_box_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sab_box_link'"
