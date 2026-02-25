#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpnpg_gallery_title_display'
wp option delete 'wpnpg_gallery_title'
wp option delete 'wpnpg_auto_play'
wp option delete 'wpnpg_animation_type'
wp option delete 'wpnpg_control_nav'
wp option delete 'wpnpg_pause_hover'
wp option delete 'wpnpg_slide_loop'
wp option delete 'wpnpg_thumbnail_width'
wp option delete 'wpnpg_thumbnail_margin'
wp option delete 'WPNPG_Recent_Gallery'
wp option delete 'wpnpg_order'
wp option delete 'wpnpg'
wp option delete 'wpnpg_plugin_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpnpg_second_iamge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpnpg_second_iamge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpnpg_second_iamge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpnpg_second_iamge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpnpg_third_iamge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpnpg_third_iamge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpnpg_third_iamge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpnpg_third_iamge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpnpg_fourth_iamge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpnpg_fourth_iamge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpnpg_fourth_iamge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpnpg_fourth_iamge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpnpg_fifth_iamge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpnpg_fifth_iamge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpnpg_fifth_iamge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpnpg_fifth_iamge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpnpg_sixth_iamge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpnpg_sixth_iamge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpnpg_sixth_iamge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpnpg_sixth_iamge'"
