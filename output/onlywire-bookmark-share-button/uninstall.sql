-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ow_username', 'ow_password', 'ow_autopost', 'ow_service_logins');

