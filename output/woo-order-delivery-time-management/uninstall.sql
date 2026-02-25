-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wod_opening_hours_from', 'wod_opening_hours_to', 'date_range');

