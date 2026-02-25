-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mc_mm_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_landing_pages_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_activation_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_activation_date';
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_review_notice';
DELETE FROM wp_options WHERE option_name LIKE '%mailchimp_access_token';
DELETE FROM wp_options WHERE option_name LIKE '%mailchimp_list_id';

