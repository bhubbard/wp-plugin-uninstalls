-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('background_color', 'meter_color', 'title_color', 'detail_color', 'progress_color', 'minor_color', 'bar_thick', 'height_option', 'width_option');

