#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'promociones_tap_options_framework'
wp option delete 'options_framework'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_promocion_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_promocion_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_promocion_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_promocion_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_promocion_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_promocion_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_promocion_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_promocion_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_promocion_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_promocion_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_promocion_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_promocion_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_promocion_link_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_promocion_link_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_promocion_link_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_promocion_link_target'"
