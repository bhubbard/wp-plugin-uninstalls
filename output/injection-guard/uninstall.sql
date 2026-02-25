-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ig_requests_log', 'ig_blacklisted');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_login', 'ip_logs', 'ig_last_login', 'ig_session_start', 'ig_last_session_duration', 'ig_last_logout', 'ig_last_seen');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_login', 'ip_logs', 'ig_last_login', 'ig_session_start', 'ig_last_session_duration', 'ig_last_logout', 'ig_last_seen');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_login', 'ip_logs', 'ig_last_login', 'ig_session_start', 'ig_last_session_duration', 'ig_last_logout', 'ig_last_seen');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_login', 'ip_logs', 'ig_last_login', 'ig_session_start', 'ig_last_session_duration', 'ig_last_logout', 'ig_last_seen');

