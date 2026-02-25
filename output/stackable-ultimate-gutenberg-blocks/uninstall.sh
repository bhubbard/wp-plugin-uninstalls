#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stackable_other_stackable_plugin_info'
wp option delete 'stackable_activation_date'
wp option delete 'stackable_current_version_installed'
wp option delete 'stackable_notice_gutenberg_plugin_ignore'
wp option delete 'stackable_dynamic_content_other_fields_frontend'
wp option delete 'stackable_dynamic_content_meta_keys_frontend'
wp option delete 'stackable_inspector_premium_notice_status'
wp option delete 'stackable_enable_navigation_panel'
wp option delete 'stackable_custom_php_sigs'
wp option delete 'stackable_disp_cond_custom_php_sigs'
wp option delete 'stackable_google_maps_api_key'
wp option delete 'stackable_optimize_inline_css'
wp option delete 'stackable_block_styles'
wp option delete 'stackable_block_edit_posts'
wp option delete 'stackable_enable_block_defaults'
wp option delete 'stackable_disabled_blocks'
wp option delete 'stackable_block_states'
wp option delete 'stackable_icons_fa_free_version'
wp option delete 'stackable_global_container_mode_color_scheme'
wp option delete 'stackable_use_v3_16_0_color_scheme_inheritance'
wp option delete 'stackable_global_colors_native_compatibility'
wp option delete 'stackable_global_colors'
wp option delete 'stackable_v2_disabled_blocks'
wp option delete 'stackable_v2_editor_compatibility'
wp option delete 'stackable_v2_editor_compatibility_usage'
wp option delete 'stackable_v2_frontend_compatibility'
wp option delete 'stackable_v2_block_detector_disabled'
wp option delete 'stackable_v2_frontend_detector_counter'
wp option delete 'stackable_optimize_script_load'
wp option delete 'stackable_dynamic_breakpoints'
wp option delete 'stackable_hide_cimo_notice'
wp option delete 'stackable_enable_design_library'
wp option delete 'stackable_block_default_width'
wp option delete 'stackable_block_wide_width'
wp option delete 'stackable_auto_collapse_panels'
wp option delete 'stackable_enable_global_settings'
wp option delete 'stackable_enable_block_linking'
wp option delete 'stackable_help_tooltip_disabled'
wp option delete 'stackable_enable_text_highlight'
wp option delete 'stackable_enable_dynamic_content'
wp option delete 'stackable_enable_copy_paste_styles'
wp option delete 'stackable_enable_reset_layout'
wp option delete 'stackable_enable_save_as_default_block'
wp option delete 'stackable_enable_text_default_block'
wp option delete 'stackable_global_typography'
wp option delete 'stackable_global_force_typography'
wp option delete 'stackable_global_hide_theme_colors'
wp option delete 'stackable_global_hide_default_colors'
wp option delete 'stackable_global_hide_site_editor_colors'
wp option delete 'stackable_global_typography_apply_to'
wp option delete 'stackable_selected_font_pair'
wp option delete 'stackable_custom_font_pairs'
wp option delete 'stackable_use_typography_as_presets'
wp option delete 'stackable_is_apply_body_to_html'
wp option delete 'stackable_icon_library'
wp option delete 'stackable_global_colors_palette_only'
wp option delete 'stackable_global_block_styles'
wp option delete 'stackable_global_buttons_and_icons'
wp option delete 'stackable_global_color_schemes'
wp option delete 'stackable_global_hide_color_scheme_colors'
wp option delete 'stackable_global_base_color_scheme'
wp option delete 'stackable_global_background_mode_color_scheme'
wp option delete 'stackable_global_color_scheme_generated_css'
wp option delete 'stackable_use_size_presets_by_default'
wp option delete 'stackable_global_custom_preset_controls'
wp option delete 'stackable_global_spacing_and_borders'
wp option delete 'stackable_disable_block_style_inheritance'
wp option delete 'stackable_show_pro_notices'
wp option delete 'stackable_pro_notice_start_date'
wp option delete 'stackable_guided_tour_states'
wp option delete 'stackable_redirect_to_welcome'
wp option delete 'stackable_notifications_dismissed'

# Delete Transients
wp transient delete 'stackable_get_design_library_v3'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_stackable_get_block_designs_v2_%' OR option_name LIKE '_site_transient_stackable_get_block_designs_v2_%'"
wp transient delete 'stackable_get_design_library'
wp transient delete 'stackable_get_design_library_json_v4'
wp transient delete 'stackable_get_design_library_v4'
wp transient delete 'stackable_get_design_library_pages_v4'
wp transient delete 'stackable_block_style_inheritance_hash'
wp transient delete 'stackable_block_style_inheritance_css'
wp transient delete 'stackable_news_feed_links'
wp transient delete 'stackable_update_article'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stackable_optimized_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stackable_optimized_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stackable_optimized_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stackable_optimized_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stackable_optimized_css_raw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stackable_optimized_css_raw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stackable_optimized_css_raw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stackable_optimized_css_raw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stk_block_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stk_block_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stk_block_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stk_block_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stk_block_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stk_block_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stk_block_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stk_block_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stk_style_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stk_style_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stk_style_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stk_style_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
