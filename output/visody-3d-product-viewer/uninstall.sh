#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'visody_show_fullscreen_button'
wp option delete 'visody_show_item_fullscreen_button'
wp option delete 'visody_show_camera_button'
wp option delete 'visody_float_button_position'
wp option delete 'visody_show_zoom_buttons'
wp option delete 'visody_show_item_animations'
wp option delete 'visody_button_size'
wp option delete 'visody_viewer_bg_color'
wp option delete 'visody_viewer_loader_color'
wp option delete 'visody_viewer_loader_bar_color'
wp option delete 'visody_button_loader_color'
wp option delete 'visody_button_color'
wp option delete 'visody_button_bg_color'
wp option delete 'visody_button_border_width'
wp option delete 'visody_button_border_color'
wp option delete 'visody_button_border_radius'
wp option delete 'visody_close_button_color'
wp option delete 'visody_close_button_bg_color'
wp option delete 'visody_button_close_border_color'
wp option delete 'visody_button_hover_bg_color'
wp option delete 'visody_button_hover_text_color'
wp option delete 'visody_close_button_hover_bg_color'
wp option delete 'visody_close_button_hover_text_color'
wp option delete 'visody_button_remove_shadow'
wp option delete 'visody_custom_css'
wp option delete 'visody_class_gallery'
wp option delete 'visody_class_gallery_wrapper'
wp option delete 'visody_class_gallery_item'
wp option delete 'visody_class_gallery_item_active'
wp option delete 'visody_class_gallery_thumbnail_item'
wp option delete 'visody_class_gallery_trigger'
wp option delete 'visody_check_gallery_interval'
wp option delete 'visody_zoom_button_factor'
wp option delete 'visody_inside_float_button_position'
wp option delete 'visody_control_button_position'
wp option delete 'visody_show_ar_desktop_button'
wp option delete 'visody_show_ar_button_inline'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visody_viewer_model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visody_viewer_model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visody_viewer_model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visody_viewer_model'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visody_enable_viewer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visody_enable_viewer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visody_enable_viewer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visody_enable_viewer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visody_inline_viewer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visody_inline_viewer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visody_inline_viewer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visody_inline_viewer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visody_inline_viewer_last_slide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visody_inline_viewer_last_slide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visody_inline_viewer_last_slide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visody_inline_viewer_last_slide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visody_inline_shortcode_viewer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visody_inline_shortcode_viewer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visody_inline_shortcode_viewer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visody_inline_shortcode_viewer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visody_viewer_show_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visody_viewer_show_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visody_viewer_show_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visody_viewer_show_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visody_viewer_show_poster'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visody_viewer_show_poster'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visody_viewer_show_poster'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visody_viewer_show_poster'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visody_inline_viewer_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visody_inline_viewer_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visody_inline_viewer_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visody_inline_viewer_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visody_viewer_model_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visody_viewer_model_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visody_viewer_model_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visody_viewer_model_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visody_viewer_ios_model_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visody_viewer_ios_model_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visody_viewer_ios_model_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visody_viewer_ios_model_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visody_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visody_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visody_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visody_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visody_viewer_frame_ratio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visody_viewer_frame_ratio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visody_viewer_frame_ratio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visody_viewer_frame_ratio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visody_viewer_frame_ratio_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visody_viewer_frame_ratio_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visody_viewer_frame_ratio_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visody_viewer_frame_ratio_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visody_viewer_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visody_viewer_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visody_viewer_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visody_viewer_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_ar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_ar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_ar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_ar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'annotations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'annotations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'annotations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'annotations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'annotation_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'annotation_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'annotation_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'annotation_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'animation_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'animation_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'animation_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'animation_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'animation_autoplay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'animation_autoplay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'animation_autoplay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'animation_autoplay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_camera_controls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_camera_controls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_camera_controls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_camera_controls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_touch_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_touch_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_touch_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_touch_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ar_model_placement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ar_model_placement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ar_model_placement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ar_model_placement'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ar_scale_fixed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ar_scale_fixed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ar_scale_fixed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ar_scale_fixed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'environment_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'environment_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'environment_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'environment_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'environment_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'environment_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'environment_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'environment_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'environment_is_skybox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'environment_is_skybox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'environment_is_skybox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'environment_is_skybox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'environment_skybox_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'environment_skybox_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'environment_skybox_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'environment_skybox_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'environment_exposure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'environment_exposure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'environment_exposure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'environment_exposure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shadow_intensity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shadow_intensity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shadow_intensity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shadow_intensity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shadow_softness'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shadow_softness'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shadow_softness'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shadow_softness'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'set_camera_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'set_camera_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'set_camera_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'set_camera_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camera_target_x'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camera_target_x'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camera_target_x'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camera_target_x'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camera_target_y'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camera_target_y'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camera_target_y'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camera_target_y'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camera_target_z'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camera_target_z'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camera_target_z'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camera_target_z'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camera_initial_x'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camera_initial_x'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camera_initial_x'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camera_initial_x'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camera_initial_y'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camera_initial_y'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camera_initial_y'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camera_initial_y'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'set_camera_limits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'set_camera_limits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'set_camera_limits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'set_camera_limits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camera_x_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camera_x_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camera_x_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camera_x_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camera_x_limit_clockwise'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camera_x_limit_clockwise'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camera_x_limit_clockwise'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camera_x_limit_clockwise'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camera_z_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camera_z_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camera_z_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camera_z_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camera_z_limit_clockwise'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camera_z_limit_clockwise'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camera_z_limit_clockwise'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camera_z_limit_clockwise'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'set_camera_min_zoom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'set_camera_min_zoom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'set_camera_min_zoom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'set_camera_min_zoom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camera_min_zoom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camera_min_zoom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camera_min_zoom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camera_min_zoom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camera_autorotate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camera_autorotate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camera_autorotate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camera_autorotate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camera_autorotate_speed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camera_autorotate_speed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camera_autorotate_speed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camera_autorotate_speed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camera_autorotate_delay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camera_autorotate_delay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camera_autorotate_delay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camera_autorotate_delay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camera_interpolation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camera_interpolation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camera_interpolation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camera_interpolation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visody_viewer_poster'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visody_viewer_poster'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visody_viewer_poster'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visody_viewer_poster'"
