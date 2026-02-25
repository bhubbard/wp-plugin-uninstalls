-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lyode_typing_default_loop', 'lyode_typing_default_style', 'lyode_typing_default_cursor', 'lyode_typing_enable_statistics', 'lyode_typing_statistics');

