-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nice_loader_font_size', 'nice_loader_title', 'nice_loader_subtitle', 'nice_loader_logo_url', 'nice_loader_theme', 'nice_loader_home_only', 'nice_loader_main_color');

