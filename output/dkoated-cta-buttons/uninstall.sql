-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fallback_url', 'fallback_text', 'fallback_desc', 'fallback_title', 'fallback_type', 'fallback_style', 'fallback_color', 'fallback_height', 'fallback_width', 'fallback_customcss', 'fallback_opennewwindow', 'fallback_nofollow', 'fallback_textcolor', 'fallback_customvi', 'fallback_customho', 'fallback_donated');

