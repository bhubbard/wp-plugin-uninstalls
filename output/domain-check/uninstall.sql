-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('domain_check_version', 'site_url');
DELETE FROM wp_options WHERE option_name LIKE '%ftue';
DELETE FROM wp_options WHERE option_name LIKE '%email_primary_email';
DELETE FROM wp_options WHERE option_name LIKE '%email_additional_emails';
DELETE FROM wp_options WHERE option_name LIKE '%domain_extension_favorites';
DELETE FROM wp_options WHERE option_name LIKE '%coupons_primary_site';
DELETE FROM wp_options WHERE option_name LIKE '%version';
DELETE FROM wp_options WHERE option_name LIKE '%coupons_updated';

