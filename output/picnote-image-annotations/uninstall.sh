#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'picnote_default_annotation'
wp option delete 'picnote_auto_indexing_enabled'
wp option delete 'picnote_indexing_post_types'
wp option delete 'picnote_overlay_post_types'
wp option delete 'picnote_overlay_annotation_prefix'
wp option delete 'picnote_global_list_display'
wp option delete 'picnote_global_list_heading_text'
wp option delete 'picnote_license_as_link'
wp option delete 'picnote_list_heading_text'
wp option delete 'picnote_list_show'
wp option delete 'picnote_overlay_enable'
wp option delete 'picnote_overlay_background_color'
wp option delete 'picnote_overlay_opacity'
wp option delete 'picnote_overlay_padding'
wp option delete 'picnote_overlay_border_radius'
wp option delete 'picnote_overlay_border_enabled'
wp option delete 'picnote_overlay_border_width'
wp option delete 'picnote_overlay_border_style'
wp option delete 'picnote_overlay_border_color'
wp option delete 'picnote_overlay_display_mode'
wp option delete 'picnote_overlay_position'
wp option delete 'picnote_overlay_margin'
wp option delete 'picnote_overlay_text_align'
wp option delete 'picnote_overlay_text_opacity'
wp option delete 'picnote_overlay_use_theme_text_color'
wp option delete 'picnote_overlay_text_color'
wp option delete 'picnote_overlay_use_theme_font_size'
wp option delete 'picnote_overlay_font_size'
wp option delete 'picnote_overlay_font_unit'
wp option delete 'picnote_overlay_use_theme_font_weight'
wp option delete 'picnote_overlay_font_weight'
wp option delete 'picnote_list_use_theme_title_size'
wp option delete 'picnote_list_title_size'
wp option delete 'picnote_list_title_unit'
wp option delete 'picnote_list_use_theme_title_weight'
wp option delete 'picnote_list_title_weight'
wp option delete 'picnote_list_use_theme_title_color'
wp option delete 'picnote_list_title_color'
wp option delete 'picnote_list_title_italic'
wp option delete 'picnote_list_title_underline'
wp option delete 'picnote_list_style'
wp option delete 'picnote_list_use_theme_items_size'
wp option delete 'picnote_list_items_size'
wp option delete 'picnote_list_items_unit'
wp option delete 'picnote_list_use_theme_items_weight'
wp option delete 'picnote_list_items_weight'
wp option delete 'picnote_list_use_theme_items_color'
wp option delete 'picnote_list_items_color'
wp option delete 'picnote_list_items_italic'
wp option delete 'picnote_list_items_underline'
wp option delete 'picnote_global_list_title_size'
wp option delete 'picnote_global_list_title_unit'
wp option delete 'picnote_global_list_title_weight'
wp option delete 'picnote_global_list_title_color'
wp option delete 'picnote_global_list_title_italic'
wp option delete 'picnote_global_list_title_underline'
wp option delete 'picnote_global_list_style'
wp option delete 'picnote_global_list_items_size'
wp option delete 'picnote_global_list_items_unit'
wp option delete 'picnote_global_list_items_weight'
wp option delete 'picnote_global_list_items_color'
wp option delete 'picnote_global_list_items_italic'
wp option delete 'picnote_global_list_items_underline'
wp option delete 'picnote_global_table_header_bg'
wp option delete 'picnote_global_table_header_font_size'
wp option delete 'picnote_global_table_header_font_unit'
wp option delete 'picnote_global_table_header_color'
wp option delete 'picnote_global_table_header_padding'
wp option delete 'picnote_global_table_row_bg'
wp option delete 'picnote_global_table_row_font_size'
wp option delete 'picnote_global_table_row_font_unit'
wp option delete 'picnote_global_table_row_color'
wp option delete 'picnote_global_table_row_padding'
wp option delete 'picnote_overlay_style_preset'
wp option delete 'picnote_list_style_preset'
wp option delete 'picnote_delete_data'
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
wp cron event delete 'picnote_index_post'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'use_default_annotation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'use_default_annotation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'use_default_annotation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'use_default_annotation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_annotation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_annotation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_annotation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_annotation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_author_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_author_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_author_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_author_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_license'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_license'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_license'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_license'"
