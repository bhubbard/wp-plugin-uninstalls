-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('session_rewind_api_key', 'session_rewind_start_recording', 'session_rewind_create_new_session');

