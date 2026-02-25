-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iqa_trackingcode', 'iqa_track_loggedin', 'iqa_track_admin');

