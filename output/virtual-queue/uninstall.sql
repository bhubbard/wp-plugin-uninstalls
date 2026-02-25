-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vq_active_sessions', 'vq_sessions_limit_number', 'vq_cookie_expire_hours', 'vq_refresh_seconds', 'vq_inactive_minutes', 'vq_landing_page_url');

