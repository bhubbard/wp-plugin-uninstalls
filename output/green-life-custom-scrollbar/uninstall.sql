-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gl_scrollbar_show', 'gl_scrollbar_width', 'gl_scrollbar_bgcolor', 'gl_scrollbar_cursor_color', 'gl_scrollbar_cursor_radius', 'gl_scrollbar_speed', 'gl_scrollbar_opacity', 'gl_scrollbar_autohide', 'gl_scrollbar_autohide_delay', 'gl_scrollbar_show_admin', 'gl_scrollbar_force_default');

