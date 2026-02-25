-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('section_blocks_mailchimp_api_key', 'section_blocks_recaptcha_site_key', 'section_blocks_recaptcha_secret_key');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

