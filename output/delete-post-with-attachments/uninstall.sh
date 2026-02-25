#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brizy_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brizy_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brizy_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brizy_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy_attachment_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy_attachment_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy_attachment_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy_attachment_uid'"
