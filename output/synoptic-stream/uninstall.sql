-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('synoptic_stream_api_key', 'synoptic_stream_api_key_error', 'synoptic_stream_stream_id', 'synoptic_stream_post_types', 'synoptic_stream_activity_log');

