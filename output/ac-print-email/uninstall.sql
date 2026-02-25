-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acpe_enable_posts', 'acpe_enable_pages', 'acpe_enable_category', 'acpe_enable_tag', 'acpe_position', 'acpe_providers', 'acpe_icon_style', 'acpe_display_mode', 'acpe_text_color', 'acpe_menu_bg', 'acpe_placement');

