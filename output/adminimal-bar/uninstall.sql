-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adminimal_bar_enabled', 'adminimal_bar_orientation', 'adminimal_bar_minimized_transparent', 'adminimal_bar_minimized_logo_color');

