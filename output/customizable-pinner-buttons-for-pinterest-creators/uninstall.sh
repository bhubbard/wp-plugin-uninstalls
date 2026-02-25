#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pinnerpress_enable_hidden_pins'
wp option delete 'pinnerpress_activation_notice_dismissed'
wp option delete 'pinnerpress_pinterest_url'
wp option delete 'pinnerpress_pinterest_display_name'
wp option delete 'pinnerpress_profile_image'
wp option delete 'pinnerpress_disable_rich_pins'
wp option delete 'pinnerpress_follow_button_default_text'
wp option delete 'pinnerpress_follow_button_default_color'
wp option delete 'pinnerpress_follow_button_default_text_color'
wp option delete 'pinnerpress_pin_button_status'
wp option delete 'pinnerpress_hover_button_style'
wp option delete 'pinnerpress_hover_button_position'
wp option delete 'pinnerpress_hover_button_shape'
wp option delete 'pinnerpress_hover_button_size'
wp option delete 'pinnerpress_hover_button_color'
wp option delete 'pinnerpress_hover_button_text_color'
wp option delete 'pinnerpress_image_shadow'
wp option delete 'pinnerpress_custom_button_text'
wp option delete 'pinnerpress_pin_button_custom_selectors_enabled'
wp option delete 'pinnerpress_pin_button_custom_selectors'
wp option delete 'pinnerpress_pin_button_find_images_in_selectors'
wp option delete 'pinnerpress_custom_selectors_enabled'
wp option delete 'pinnerpress_custom_selectors'
wp option delete 'pinnerpress_find_images_in_selectors'
wp option delete 'pinnerpress_category_filter_pin_buttons'
wp option delete 'pinnerpress_category_filter_image_banners'
wp option delete 'pinnerpress_category_filter_call_out_banners'
wp option delete 'pinnerpress_category_filter_follow_boxes'
wp option delete 'pinnerpress_excluded_categories'
wp option delete 'pinnerpress_size_filter_pin_buttons'
wp option delete 'pinnerpress_size_filter_image_banners'
wp option delete 'pinnerpress_minimum_image_size'
wp option delete 'pinnerpress_exclude_gallery_minimum'
wp option delete 'pinnerpress_pin_button_excluded_categories'
wp option delete 'pinnerpress_enable_rich_pins'
wp option delete 'pinnerpress_rich_pins_article'
wp option delete 'pinnerpress_rich_pins_recipe'
wp option delete 'pinnerpress_rich_pins_product'
wp option delete 'pinnerpress_follow_box_status'
wp option delete 'pinnerpress_account_description'
wp option delete 'pinnerpress_follow_button_bg_color'
wp option delete 'pinnerpress_follow_button_text_color'
wp option delete 'pinnerpress_follow_box_display_pin_click'
wp option delete 'pinnerpress_follow_box_display_page_load'
wp option delete 'pinnerpress_follow_box_allow_dismiss'
wp option delete 'pinnerpress_header_image'
wp option delete 'pinnerpress_follow_box_excluded_categories'
wp option delete 'pinnerpress_banner_status'
wp option delete 'pinnerpress_banner_bg_color'
wp option delete 'pinnerpress_banner_text_color'
wp option delete 'pinnerpress_banner_text'
wp option delete 'pinnerpress_banner_opacity'
wp option delete 'pinnerpress_banner_custom_selectors_enabled'
wp option delete 'pinnerpress_banner_custom_selectors'
wp option delete 'pinnerpress_banner_find_images_in_selectors'
wp option delete 'pinnerpress_banner_excluded_categories'
wp option delete 'pinnerpress_call_out_status'
wp option delete 'pinnerpress_call_out_position'
wp option delete 'pinnerpress_call_out_display_posts'
wp option delete 'pinnerpress_call_out_display_pages'
wp option delete 'pinnerpress_call_out_style'
wp option delete 'pinnerpress_call_out_bg_color'
wp option delete 'pinnerpress_call_out_border_color'
wp option delete 'pinnerpress_call_out_text_color'
wp option delete 'pinnerpress_call_out_title'
wp option delete 'pinnerpress_call_out_description'
wp option delete 'pinnerpress_call_out_button_text'
wp option delete 'pinnerpress_call_out_button_bg_color'
wp option delete 'pinnerpress_call_out_button_text_color'
wp option delete 'pinnerpress_call_out_show_icon'
wp option delete 'pinnerpress_call_out_logo'
wp option delete 'pinnerpress_call_out_excluded_categories'
wp option delete 'pinnerpress_analytics_enabled'
wp option delete 'pinnerpress_analytics_ignore_logged_in'
wp option delete 'pinnerpress_hubbub_migration_completed'
wp option delete 'pinnerpress_tasty_pins_migration_completed'
wp option delete 'pinnerpress_essb_migration_completed'
wp option delete 'pinnerpress_image_analytics_case_migration_done'
wp option delete 'pinnerpress_image_analytics_backfill_done'
wp option delete 'pinnerpress_image_analytics_consolidation_done'
wp option delete 'pinnerpress_image_analytics_id_migration_done'
wp option delete 'pinnerpress_image_analytics_date_migration_done'
wp option delete 'easy-social-share-buttons3'
wp option delete 'essb3_options'
wp option delete 'essb_options'
wp option delete 'pinnerpress_pin_button_position'
wp option delete 'pinnerpress_follow_box_enabled'
wp option delete 'pinnerpress_follow_box_description'
wp option delete 'pinnerpress_follow_box_header'
wp option delete 'dpsp_settings'
wp option delete 'dpsp_pinterest_share_images_setting'
wp option delete 'tasty_pins_settings'
wp option delete 'tasty_pins_follow_box'
wp option delete 'tasty_pins_banner'
wp option delete 'pinnerpress_pin_button_shape'
wp option delete 'pinnerpress_enable_image_overlay'
wp option delete 'pinnerpress_follow_box_logo_image'
wp option delete 'pinnerpress_follow_box_account_name'
wp option delete 'pinnerpress_follow_box_logo_bg_color'
wp option delete 'pinnerpress_follow_box_button_bg_color'
wp option delete 'pinnerpress_follow_box_button_text_color'
wp option delete 'pinnerpress_shareasale_affiliate_id'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pinnerpress_migration_%' OR option_name LIKE '_site_transient_pinnerpress_migration_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pinnerpress_disable_pin_buttons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pinnerpress_disable_pin_buttons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pinnerpress_disable_pin_buttons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pinnerpress_disable_pin_buttons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pinnerpress_disable_image_banners'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pinnerpress_disable_image_banners'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pinnerpress_disable_image_banners'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pinnerpress_disable_image_banners'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pinnerpress_disable_call_out_banners'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pinnerpress_disable_call_out_banners'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pinnerpress_disable_call_out_banners'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pinnerpress_disable_call_out_banners'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pinnerpress_disable_follow_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pinnerpress_disable_follow_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pinnerpress_disable_follow_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pinnerpress_disable_follow_box'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pinnerpress_hidden_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pinnerpress_hidden_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pinnerpress_hidden_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pinnerpress_hidden_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_pinterest_hidden_images_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_pinterest_hidden_images_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_pinterest_hidden_images_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_pinterest_hidden_images_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_pinterest_hidden_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_pinterest_hidden_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_pinterest_hidden_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_pinterest_hidden_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pinnerpress_image_analytics_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pinnerpress_image_analytics_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pinnerpress_image_analytics_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pinnerpress_image_analytics_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tp_pinterest_hidden_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tp_pinterest_hidden_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tp_pinterest_hidden_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tp_pinterest_hidden_image'"
