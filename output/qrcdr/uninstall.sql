-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qrcdr_country_codes');
DELETE FROM wp_options WHERE option_name LIKE '%_review_notice_dismissed';

