-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('monitorlogin_email', 'monitorlogin_plugs', 'monitorlogin_themes');

