-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpspeed_settings', 'ftp_credentials', 'wpspeed_notices');

