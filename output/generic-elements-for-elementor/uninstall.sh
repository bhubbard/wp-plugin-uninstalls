#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'generic_gsap_enable_option'
wp option delete 'generic_enable_header_tpl_option'
wp option delete 'generic_enable_footer_tpl_option'
wp option delete 'generic_bootstrap_option'
wp option delete 'generic_fontawesome_option'
wp option delete 'generic_magnific_popup_option'
wp option delete 'generic_odometer_option'
wp option delete 'generic_appear_option'
wp option delete 'generic_waypoints_option'
wp option delete 'generic_animate_option'
wp option delete 'generic_wow_option'
wp option delete 'generic_swiper_option'
wp option delete 'generic_meanmenu_option'
wp option delete 'generic_el_params'
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'
wp option delete 'elementor_cpt_support'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generic_el_meta_active_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generic_el_meta_active_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generic_el_meta_active_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generic_el_meta_active_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_generic_el_meta_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_generic_el_meta_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_generic_el_meta_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_generic_el_meta_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generic_el_bar_elementor_type_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generic_el_bar_elementor_type_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generic_el_bar_elementor_type_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generic_el_bar_elementor_type_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'generic_el_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'generic_el_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'generic_el_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'generic_el_params'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_dark_mood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_dark_mood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_dark_mood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_dark_mood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
