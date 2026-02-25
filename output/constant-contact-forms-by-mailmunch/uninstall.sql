-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cc_mm_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_landing_pages_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_activation_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_activation_date';
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_review_notice';
DELETE FROM wp_options WHERE option_name LIKE '%constantcontact_access_token';
DELETE FROM wp_options WHERE option_name LIKE '%constantcontact_list_id';
DELETE FROM wp_options WHERE option_name LIKE '%_user_token';
DELETE FROM wp_options WHERE option_name LIKE '%_site_id';
DELETE FROM wp_options WHERE option_name LIKE '%_auto_embed';
DELETE FROM wp_options WHERE option_name LIKE '%user_token';
DELETE FROM wp_options WHERE option_name LIKE '%user_email';
DELETE FROM wp_options WHERE option_name LIKE '%user_password';
DELETE FROM wp_options WHERE option_name LIKE '%skip_onboarding';
DELETE FROM wp_options WHERE option_name LIKE '%data';
DELETE FROM wp_options WHERE option_name LIKE '%guest_user';
DELETE FROM wp_options WHERE option_name LIKE '%wordpress_instance_id';
DELETE FROM wp_options WHERE option_name LIKE '%site_id';
DELETE FROM wp_options WHERE option_name LIKE '%list_id';

