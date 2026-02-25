-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tavakal_included_roles', 'tavakal_time_type', 'tavakal_time_before_destroying_sessions');

