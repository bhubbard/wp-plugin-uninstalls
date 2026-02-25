-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('status_ccwp', 'cursor_type_ccwp', 'ccwp_cursor_color', 'ccwp_show_default_cursor', 'ccwp_cursor_size', 'ccwp_front_cursor_type', 'cursor-image-url');

