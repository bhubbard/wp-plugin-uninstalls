-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('resaline_frame_height', 'resaline_frame_length', 'resaline_frame_background', 'resaline_nb_calendars', 'resaline_account_id');
DELETE FROM wp_options WHERE option_name LIKE 'resaline_calendar_%';

