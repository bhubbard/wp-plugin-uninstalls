#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fffg_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gravity_form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gravity_form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gravity_form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gravity_form_data'"
