-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('js_width', 'js_height', 'js_pause', 'js_paging', 'js_nav');

