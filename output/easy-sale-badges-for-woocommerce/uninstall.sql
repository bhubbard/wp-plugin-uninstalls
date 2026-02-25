-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asnp_easy_sale_badge_settings', 'asnp_wesb_db_version', 'asnp_wesb_installing');
DELETE FROM wp_options WHERE option_name LIKE '%_added';

