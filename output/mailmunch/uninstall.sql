-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailmunch_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_landing_pages_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_activation_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_activation_date';
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_review_notice';
DELETE FROM wp_options WHERE option_name LIKE '%user_token';
DELETE FROM wp_options WHERE option_name LIKE '%user_email';
DELETE FROM wp_options WHERE option_name LIKE '%user_password';
DELETE FROM wp_options WHERE option_name LIKE '%data';
DELETE FROM wp_options WHERE option_name LIKE '%guest_user';
DELETE FROM wp_options WHERE option_name LIKE '%wordpress_instance_id';
DELETE FROM wp_options WHERE option_name LIKE '%site_id';
DELETE FROM wp_options WHERE option_name LIKE '%list_id';
DELETE FROM wp_options WHERE option_name LIKE '%class-mailmunchaccess_token';
DELETE FROM wp_options WHERE option_name LIKE '%class-mailmunchlist_id';
DELETE FROM wp_options WHERE option_name LIKE '%_auto_embed';

