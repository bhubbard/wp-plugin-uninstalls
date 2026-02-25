-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctrlbs_settings', 'ctrlbs_donation_notice_shown', 'ctrlbs_donation_notice_dismissed', 'ctrlbs_cache');
DELETE FROM wp_options WHERE option_name LIKE 'ctrlbs_rate_limit_%';
DELETE FROM wp_options WHERE option_name LIKE 'ctrlbs_rate_limit_time_%';
DELETE FROM wp_options WHERE option_name LIKE 'ctrlbs_throttle_%';

