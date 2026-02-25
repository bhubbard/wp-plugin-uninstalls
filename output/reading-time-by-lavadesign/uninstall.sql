-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lava_reading_wpm', 'lava_reading_show_icon', 'lava_reading_icon_style');

