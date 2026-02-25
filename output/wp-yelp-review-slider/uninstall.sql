-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpyelp_yelp_settings', 'wpyelp_hidden_reviews', 'wpyelp_options', 'wpfbr_options');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

