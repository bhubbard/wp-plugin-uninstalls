-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%tracking_notice_dismissed';
DELETE FROM wp_options WHERE option_name LIKE '%tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%tracking_last_sended_at';

