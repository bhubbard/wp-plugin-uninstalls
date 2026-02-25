-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mtfree_mouse_trail_color', 'mtfree_mouse_trail_enabled');

