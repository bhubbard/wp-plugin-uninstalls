-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tz_securitycode', 'tz_black_ip', 'tz_bot_enable');

