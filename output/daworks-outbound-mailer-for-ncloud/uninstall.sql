-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ncloud_mailer_settings', 'ncloud_mailer_logs');

