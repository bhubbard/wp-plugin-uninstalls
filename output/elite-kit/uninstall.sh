#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widgets'
wp option delete 'elite_kit_extensions'
wp option delete 'ekl_widgets'
wp option delete 'elementor_css_print_method'
wp option delete 'elite_kit_lite_installed'
wp option delete 'ek_deactivation_feedback'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ek_library_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ek_library_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ek_library_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ek_library_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ek_display_cond'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ek_display_cond'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ek_display_cond'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ek_display_cond'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ek_template_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ek_template_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ek_template_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ek_template_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ek_post_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ek_post_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ek_post_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ek_post_views_count'"
