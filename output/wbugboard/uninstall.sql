-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbbd_general_settings', 'wbbd_allowed_roles', 'wbbd_email_settings', 'wbbd_team_users');

