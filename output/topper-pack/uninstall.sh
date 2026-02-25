#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'topppa_cpt_builder'
wp option delete 'topppa_custom_post_types'
wp option delete 'topppa_assets_manager'
wp option delete 'topppa_smooth_scroller'
wp option delete 'topppa_template_library'
wp option delete 'topppa_mega_menu'
wp option delete 'topppa_custom_icon'
wp option delete 'topppa_custom_font'
wp option delete 'topppa_google_maps_api_key'
wp option delete 'topppa_facebook_id'
wp option delete 'topppa_facebook_token'
wp option delete 'topppa_recaptcha_site_key'
wp option delete 'topppa_recaptcha_secret_key'
wp option delete 'topppa_twitter_uname'
wp option delete 'topppa_twitter_key'
wp option delete 'topppa_twitter_secret_key'
wp option delete 'topppa_twitter_access_token'
wp option delete 'topppa_twitter_access_token_secret'
wp option delete 'topppa_mailchimp_id'
wp option delete 'topppa_mailchimp_key'
wp option delete 'topppa_instagram_app_id'
wp option delete 'topppa_instagram_app_secret'
wp option delete 'topppa_instagram_access_token'
wp option delete 'topper_pack_wizard_completed'
wp option delete 'topper_pack_show_wizard'
wp option delete 'elementor_experiment-additional_custom_breakpoints'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'elementor_active_kit'
wp option delete 'topppa_import_in_progress'
wp option delete 'sidebars_widgets'
wp option delete 'topppa_api_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_elementor_cache_kit_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_elementor_kit_settings_%'"
wp option delete 'elementor_version'
wp option delete 'elementor_style_kit_updated'
wp option delete 'topppa_sticky_section'
wp option delete 'topppa_scroll_to_top'
wp option delete 'topppa_custom_css'
wp option delete 'topppa_container_hover_effects'
wp option delete 'interactive_animations'
wp option delete 'topppa_tooltip_section'
wp option delete 'topppa_motion_text'
wp option delete 'topppa_dots_particle_animation'
wp option delete 'topppa_wrapper_link'
wp option delete 'topppa_conditional_display'
wp option delete 'topppa_hover_image_viewer'
wp option delete 'topppa_product_mini_cart_button_widget'
wp option delete 'topppa_cursor_effect'
wp option delete 'topppa_text_reveal_widget'
wp option delete 'topppa_logo_widget'
wp option delete 'topppa_header_info_widget'
wp option delete 'topppa_button_widget'
wp option delete 'topppa_social_widget'
wp option delete 'topppa_header_menu_widget'
wp option delete 'topppa_breadcrumb_widget'
wp option delete 'topppa_service_widget'
wp option delete 'topppa_testimonial_widget'
wp option delete 'topppa_brand_logo_widget'
wp option delete 'topppa_counter_widget'
wp option delete 'topppa_blog_widget'
wp option delete 'topppa_list_item_widget'
wp option delete 'topppa_item_box_widget'
wp option delete 'topppa_icon_box_widget'
wp option delete 'topppa_contact_form_widget'
wp option delete 'topppa_image_widget'
wp option delete 'topppa_video_button_widget'
wp option delete 'topppa_advanced_tab_widget'
wp option delete 'topppa_pricing_table_widget'
wp option delete 'topppa_faq_widget'
wp option delete 'topppa_post_title_widget'
wp option delete 'topppa_page_title_widget'
wp option delete 'topppa_post_meta_widget'
wp option delete 'topppa_post_content_widget'
wp option delete 'topppa_post_share_widget'
wp option delete 'topppa_post_tags_widget'
wp option delete 'topppa_team_widget'
wp option delete 'topppa_heading_widget'
wp option delete 'topppa_flip_box_widget'
wp option delete 'topppa_slider_widget'
wp option delete 'topppa_countdown_widget'
wp option delete 'topppa_gallery_widget'
wp option delete 'topppa_hotspot_widget'
wp option delete 'topppa_timeline_widget'
wp option delete 'topppa_shop_widget'
wp option delete 'topppa_product_thumbnail_widget'
wp option delete 'topppa_product_price_widget'
wp option delete 'topppa_product_title_widget'
wp option delete 'topppa_product_cart_button_widget'
wp option delete 'topppa_product_categories_tags_widget'
wp option delete 'topppa_product_review_comment_widget'
wp option delete 'topppa_product_checkout_page_widget'
wp option delete 'topppa_product_cart_page_widget'
wp option delete 'topppa_mailchimp_widget'
wp option delete 'topppa_progress_bar_widget'
wp option delete 'topppa_accordion_image_widget'
wp option delete 'topppa_audio_player_widget'
wp option delete 'topppa_image_slider_widget'
wp option delete 'topppa_service_slider_widget'
wp option delete 'topppa_toggle_widget'
wp option delete 'topppa_image_tab_widget'
wp option delete 'topppa_slider_v2_widget'
wp option delete 'topppa_slider_v3_widget'
wp option delete 'topppa_marquee_widget'
wp option delete 'topppa_vertical_marquee_widget'
wp option delete 'topppa_trade_coin_widget'
wp option delete 'topppa_search_box_widget'
wp option delete 'topppa_data_table_widget'
wp option delete 'topppa_dropdown_taxonomy_widget'
wp option delete 'topppa_animated_slider_widget'
wp option delete 'topppa_sticky_header_widget'
wp option delete 'topppa_accordion_service_widget'
wp option delete 'topppa_hero_banner_one_widget'
wp option delete 'topppa_trip_taxonomy_module_widget'
wp option delete 'topppa_trip_destination_taxonomy_widget'
wp option delete 'topppa_trip_activities_taxonomy_widget'
wp option delete 'topppa_trip_types_taxonomy_widget'
wp option delete 'topppa_trip_activities_grid_widget'
wp option delete 'topppa_trip_module_widget'
wp option delete 'topppa_trip_activities_tab_module_widget'
wp option delete 'topppa_trip_types_tab_module_widget'
wp option delete 'topppa_trip_activities_accordion_widget'
wp option delete 'topppa_trip_destination_tab_module_widget'
wp option delete 'topppa_trip_module_v2_widget'
wp option delete 'topppa_trip_activities_module_widget'
wp option delete 'topppa_trip_destination_module_widget'
wp option delete 'topppa_trip_types_module_widget'
wp option delete 'topppa_trip_destination_tab_v3_module_widget'
wp option delete 'topppa_trip_search_widget'
wp option delete 'topper_pack_pro_license_key'
wp option delete 'topper_pack_pro_license_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_elementor_remote_info_api_data_%'"
wp option delete 'topppa_theme_builder_settings'
wp option delete 'themepul_license_status'
wp option delete 'themepul_theme_name'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_default_catalog_orderby'

# Delete Transients
wp transient delete 'topper_pack_wizard_state'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'topppa_template_cache'
wp transient delete 'topppa_settings_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_elementor_remote_info_api_data_%' OR option_name LIKE '_site_transient_elementor_remote_info_api_data_%'"
wp transient delete 'elementor_get_template_library'
wp transient delete 'topppa_import_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_elementor_kit_css_%' OR option_name LIKE '_site_transient_elementor_kit_css_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_elementor_kit_settings_%' OR option_name LIKE '_site_transient_elementor_kit_settings_%'"
wp transient delete 'elementor_kit_colors'
wp transient delete 'elementor_kit_typography'
wp transient delete 'topppa_elementor_settings_cache'
wp transient delete 'topppa_mini_cart_settings'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'topppa_mega_content_temp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'topppa_mega_content_temp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'topppa_mega_content_temp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'topppa_mega_content_temp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'topppa_megamenu_item_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'topppa_megamenu_item_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'topppa_megamenu_item_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'topppa_megamenu_item_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'topppa_hf_include_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'topppa_hf_include_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'topppa_hf_include_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'topppa_hf_include_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'topppa_hf_exclude_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'topppa_hf_exclude_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'topppa_hf_exclude_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'topppa_hf_exclude_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'topppa_hf_target_user_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'topppa_hf_target_user_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'topppa_hf_target_user_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'topppa_hf_target_user_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'topppa_hf_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'topppa_hf_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'topppa_hf_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'topppa_hf_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'topppa-hf__enable-for-canvas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'topppa-hf__enable-for-canvas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'topppa-hf__enable-for-canvas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'topppa-hf__enable-for-canvas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'topppa_selectcategory_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'topppa_selectcategory_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'topppa_selectcategory_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'topppa_selectcategory_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'topppa_cpt_post_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'topppa_cpt_post_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'topppa_cpt_post_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'topppa_cpt_post_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wte-shortdesc-textarea'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wte-shortdesc-textarea'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wte-shortdesc-textarea'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wte-shortdesc-textarea'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_travel_engine_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_travel_engine_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_travel_engine_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_travel_engine_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_s_min_pax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_s_min_pax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_s_min_pax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_s_min_pax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_s_max_pax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_s_max_pax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_s_max_pax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_s_max_pax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpte_gallery_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpte_gallery_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpte_gallery_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpte_gallery_id'"
