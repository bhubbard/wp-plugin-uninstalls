-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ga_tag_manager_id', 'ga_use_tag_manager', 'ga_tracking_code', 'ga_anonymize_ip', 'track_logged_in');

