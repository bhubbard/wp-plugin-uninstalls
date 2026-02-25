-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bunny_fonts', 'maxi_ai_model', 'maxi_pro_network', 'local_fonts', 'local_fonts_uploaded', 'maxiblocks_current_starter_site', 'maxi_pro', 'remove_local_fonts', 'google_api_key_option', 'openai_api_key_option', 'maxi_quick_start_initial_theme', 'maxi_ai_language', 'maxi_ai_tone', 'maxi_ai_site_description', 'maxi_ai_audience', 'maxi_ai_site_goal', 'maxi_ai_services', 'maxi_ai_business_name', 'maxi_ai_business_info', 'hide_tooltips', 'hide_fse_resizable_handles', 'hide_gutenberg_responsive_preview', 'maxi_show_indicators', 'maxi_breakpoints', 'maxi_blocks_version', 'accessibility_option', 'maxi_blocks_custom_fonts', 'maxi_plugin_db_tables_created', 'maxi_blocks_quick_start_completed', 'maxi_blocks_link_color_migrated', 'maxi_blocks_text_wrap_migrated', 'maxi_blocks_sc_fonts_migration_done', 'maxiblocks_go_templates_imported', 'maxiblocks_go_templates_version', 'maxiblocks_go_has_link_migration_completed', 'maxi_blocks_db_notice_dismissed', 'maxi_auth_registry', 'maxi_blocks_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_total_count';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('maxi_blocks_master_toolbar_open', '_thumbnail_id', '_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('maxi_blocks_master_toolbar_open', '_thumbnail_id', '_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('maxi_blocks_master_toolbar_open', '_thumbnail_id', '_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('maxi_blocks_master_toolbar_open', '_thumbnail_id', '_wp_attachment_image_alt', '_wp_page_template');

