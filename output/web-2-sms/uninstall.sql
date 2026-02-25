-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('web2sms_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%_interval_time';
DELETE FROM wp_options WHERE option_name LIKE '%_sms_retry';

