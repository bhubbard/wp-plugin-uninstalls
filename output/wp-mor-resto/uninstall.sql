-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_mor_resto_restaurant');
DELETE FROM wp_options WHERE option_name LIKE '%_restaurant';
DELETE FROM wp_options WHERE option_name LIKE '%_facebook';
DELETE FROM wp_options WHERE option_name LIKE '%_instagram';
DELETE FROM wp_options WHERE option_name LIKE '%_twitter';
DELETE FROM wp_options WHERE option_name LIKE '%_linkedin';

