-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'affiliates-buddypress-page', 'affiliates-buddypress-page-position', 'affiliates-buddypress-all-pages');

