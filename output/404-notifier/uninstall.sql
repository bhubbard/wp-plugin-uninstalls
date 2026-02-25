-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ak404_mailto', 'ak404_mail_enabled', 'ak404_rss_limit', 'rss_language');
DELETE FROM wp_options WHERE option_name LIKE 'ak404_%';

