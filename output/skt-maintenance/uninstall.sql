-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maintenancemode', 'page_title', 'test-editor', 'site_title_color', 'site_title_font_size', 'heading_color', 'headingfont_size', 'description_color', 'descriptionfont_size', 'footer_text', 'footer_text_color', 'footer_textfont_size', 'custom_css', 'background_bodycss', 'background_overlay_bodycss', 'background_overlay_opc_bodycss', 'logo_width', 'logo_height', 'heading', 'header_logo', 'default_post_edit_rows', 'fontfamily', 'header_back', 'is_maintenance_mode', 'maintenance_mode_expire_time');

