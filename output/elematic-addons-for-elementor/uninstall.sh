#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_cpt_support'

# Delete Transients
wp transient delete 'elematic_activation_redirect'
wp transient delete 'elematic_svg_shapes_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elematic_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elematic_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elematic_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elematic_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elematic_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elematic_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elematic_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elematic_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
