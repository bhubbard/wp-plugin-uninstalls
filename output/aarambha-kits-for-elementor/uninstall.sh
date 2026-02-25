#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aarambha_kits_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_term_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_term_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_term_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_term_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_term_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_term_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_term_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_term_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
