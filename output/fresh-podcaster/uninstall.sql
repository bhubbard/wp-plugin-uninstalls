-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fp_custom_menu_mode', 'fresh_podcaster_css', 'fl-podcaster-custom-style');

