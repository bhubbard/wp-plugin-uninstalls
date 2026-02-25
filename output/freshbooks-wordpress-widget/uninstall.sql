-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpfbw-api-url', 'wpfbw-auth-token', 'wp_freshbook_team_hours');

