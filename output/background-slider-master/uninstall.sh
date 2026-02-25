#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bsm_easing_option_duration_settings_field'
wp option delete 'bsm_select_gallery_settings_field'
wp option delete 'bsm_animation_settings_field'
wp option delete 'bsm_view_mode_settings_field'
wp option delete 'bsm_skin_settings_field'
wp option delete 'bsm_disable_ratio_settings_field'
wp option delete 'bsm_arrow_nav_settings_field'
wp option delete 'bsm_thumb_nav_settings_field'
wp option delete 'bsm_slider_delay_settings_field'
wp option delete 'bsm_notice_get_pro_version_dismissed'
wp option delete 'bsm_auto_play_settings_field'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bsm-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bsm-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bsm-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bsm-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bsm_selected_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bsm_selected_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bsm_selected_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bsm_selected_gallery'"
