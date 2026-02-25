-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rakuten_applicationId', 'rakuten_application_secret', 'rakuten_affiliateId', 'rakuten_pageCount_max');

