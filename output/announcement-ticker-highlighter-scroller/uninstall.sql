-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('g_aths_width', 'g_aths_height', 'g_aths_css', 'g_aths_delay', 'g_aths_speed', 'g_aths_highlightcolor', 'g_aths_textcolor', 'g_aths_title', 'g_aths_title_display');

