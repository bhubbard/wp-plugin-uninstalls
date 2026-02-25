-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pb_install_time', 'pb_options', 'pbg_global_features', 'pbg_blocks_settings', 'pbg_performance_options', 'pbg_integrations_options', 'active_sitewide_plugins', 'pbg_editor_css_hash', 'pbg_editor_css_version', 'pbg_global_layout', 'sidebars_widgets', 'widget_block', 'pbg_global_colors_to_default', 'pbg_global_typography_to_default', 'pbg_global_typography', 'pbg_global_color_palette', 'pbg_global_colors', 'pbg_custom_colors', 'pbg_global_color_palettes', 'pbg_loaded_fonts', 'pbg_downloaded_font_files', 'pbg_local_font_files', 'pbg_favorite_templates', '_pbg_plugin_pointer_priority', 'update_plugins', 'pbg_cleanup_done', 'pattern_templates', 'pattern_categories', 'pattern_blocks', 'pbg_cm25_pointer_dismiss');
DELETE FROM wp_options WHERE option_name LIKE 'pb_rollback_versions_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_premium_css_file_name', '_premium_css_version', '_premium_css_content_hash', '_pbg_blocks_version', '_wp_attachment_image_alt', '_premium_blocks_image_hash', '_premium_blocks_local_image_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_premium_css_file_name', '_premium_css_version', '_premium_css_content_hash', '_pbg_blocks_version', '_wp_attachment_image_alt', '_premium_blocks_image_hash', '_premium_blocks_local_image_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_premium_css_file_name', '_premium_css_version', '_premium_css_content_hash', '_pbg_blocks_version', '_wp_attachment_image_alt', '_premium_blocks_image_hash', '_premium_blocks_local_image_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_premium_css_file_name', '_premium_css_version', '_premium_css_content_hash', '_pbg_blocks_version', '_wp_attachment_image_alt', '_premium_blocks_image_hash', '_premium_blocks_local_image_hash');

