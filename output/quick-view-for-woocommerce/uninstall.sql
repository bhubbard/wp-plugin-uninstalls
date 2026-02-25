-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'acoplw_detail_page_badge');
DELETE FROM wp_options WHERE option_name LIKE '%_quickview';
DELETE FROM wp_options WHERE option_name LIKE '%_trigger';
DELETE FROM wp_options WHERE option_name LIKE '%_general';

