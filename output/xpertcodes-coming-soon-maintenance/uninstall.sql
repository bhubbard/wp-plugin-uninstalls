-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('title_color', 'subtitle_color', 'countdown_color', 'nav_color', 'menu_toggle_label_color', 'copyright_color', 'mdxcsp_enable_coming_soon', 'mdxcsp_selected_template', 'mdxcsp_template_settings');

