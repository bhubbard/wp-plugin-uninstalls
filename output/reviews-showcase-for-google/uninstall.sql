-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mo_reviews_showcase_options', 'mo_reviews_showcase_data');

