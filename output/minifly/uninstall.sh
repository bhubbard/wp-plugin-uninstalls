#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sapmfly_back_top_bg_color'
wp option delete 'sapmfly_back_top_hv_color'
wp option delete 'sapmfly_disable_admin_notices'
wp option delete 'sapmfly_duplicate_enable'
wp option delete 'sapmfly_disable_gutenberg'
wp option delete 'sapmfly_disable_call_restapi'
wp option delete 'sapmfly_dark_mood_for_admin_button'
wp option delete 'sapmfly_hide_admin_toolbar'
wp option delete 'sapmfly_enable_svg_images'
wp option delete 'sapmfly_gravatar_img_change'
wp option delete 'sapmfly_external_link'
wp option delete 'sapmfly_disable_theme_update'
wp option delete 'sapmfly_disable_plugin_update'
wp option delete 'sapmfly_limit_revision_number'
wp option delete 'sapmfly_user_switching'
wp option delete 'sapmfly_widgets_toggle'
wp option delete 'sapmfly_hide_product_price'
wp option delete 'sapmfly_change_cart_text'
wp option delete 'sapmfly_pb_color'
wp option delete 'sapmfly_pb_height'
wp option delete 'sapmfly_enable_progress_bar'
wp option delete 'sapmfly_click_talk_popup_heading'
wp option delete 'sapmfly_click_talk_popup_subheading'
wp option delete 'sapmfly_click_talk_highlight_text'
wp option delete 'sapmfly_click_talk_color_bg'
wp option delete 'sapmfly_click_talk_agent_1_name'
wp option delete 'sapmfly_click_talk_agent_1_designation'
wp option delete 'sapmfly_click_talk_agent_1_number'
wp option delete 'sapmfly_click_talk_agent_2_name'
wp option delete 'sapmfly_click_talk_agent_2_designation'
wp option delete 'sapmfly_click_talk_agent_2_number'
wp option delete 'sapmfly_click_talk_agent_3_name'
wp option delete 'sapmfly_click_talk_agent_3_designation'
wp option delete 'sapmfly_click_talk_agent_3_number'
wp option delete 'sapmfly_click_talk_agent_4_name'
wp option delete 'sapmfly_click_talk_agent_4_designation'
wp option delete 'sapmfly_click_talk_agent_4_number'
wp option delete 'sapmfly_floating_btn_text'
wp option delete 'sapmfly_floating_btn_url'
wp option delete 'sapmfly_floating_btn_color'
wp option delete 'sapmfly_floating_btn_bg'
wp option delete 'sapmfly_floating_btn_hover'
wp option delete 'sapmfly_floating_btn_icon'
wp option delete 'sapmfly_floating_btn_close_option'
wp option delete 'sapmfly_floating_btn_open_link'
wp option delete 'sapmfly_floating_btn_style'
wp option delete 'sapmfly_floating_btn_position'
wp option delete 'sapmfly_enable_back_top_button'
wp option delete 'sapmfly_disable_mouse_right_click_button'
wp option delete 'sapmfly_disable_all_comments_button'
wp option delete 'sapmfly_dark_mood_for_users_button'
wp option delete 'sapmfly_hide_toolbar_user'
wp option delete 'sapmfly_maintenance_mood'
wp option delete 'sapmfly_ai_summary'
wp option delete 'sapmfly_click_to_talk'
wp option delete 'sapmfly_click_to_call'
wp option delete 'sapmfly_christmas_snowfall'
wp option delete 'sapmfly_click_talk_qr_image'
wp option delete 'sapmfly_click_talk_agent_1_image'
wp option delete 'sapmfly_click_talk_agent_2_image'
wp option delete 'sapmfly_click_talk_agent_3_image'
wp option delete 'sapmfly_click_talk_agent_4_image'
wp option delete 'sapmfly_sitewide_floating_button'
wp option delete 'sapmfly_custom_footer_credit'
wp option delete 'sapmfly_hide_wp_logo'
wp option delete 'sapmfly_hide_wp_help'
wp option delete 'sapmfly_hide_wp_version'
wp option delete 'sapmfly_screen_options'
wp option delete 'sapmfly_hide_footer_credit'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sapmfly_custom_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sapmfly_custom_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sapmfly_custom_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sapmfly_custom_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sapmfly_use_external'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sapmfly_use_external'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sapmfly_use_external'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sapmfly_use_external'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sapmfly_external_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sapmfly_external_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sapmfly_external_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sapmfly_external_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sapmfly_original_admin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sapmfly_original_admin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sapmfly_original_admin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sapmfly_original_admin'"
