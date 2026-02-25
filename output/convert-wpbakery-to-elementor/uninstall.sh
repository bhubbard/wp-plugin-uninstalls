#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbakery_to_elementor_options'
wp option delete 'wpbakery_to_elementor_placeholder_image_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'site-content-layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'site-content-layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'site-content-layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'site-content-layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cwte_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cwte_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cwte_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cwte_attachment'"
