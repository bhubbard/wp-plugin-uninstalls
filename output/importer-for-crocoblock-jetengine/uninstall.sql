-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore';
DELETE FROM wp_options WHERE option_name LIKE '%_ignore';

