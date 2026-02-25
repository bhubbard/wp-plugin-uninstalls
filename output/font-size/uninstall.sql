-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('font_size_site_title', 'font_size_navigation', 'font_size_body', 'font_size_sidebar', 'font_size_footer', 'font_size_h1');

