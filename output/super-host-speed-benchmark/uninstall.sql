-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shsb_settings', 'shsb_score_time', 'shsb_score');

