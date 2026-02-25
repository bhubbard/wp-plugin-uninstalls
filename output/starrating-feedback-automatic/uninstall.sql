-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yelp-url', 'facebook-url', 'display-page', 'display-post', 'yelp-key', 'site_img', 'site_title', 'site_phone', 'site_streetaddr', 'site_cityaddr', 'site_stateaddr', 'site_postaladdr', 'fb-rating', 'fb-count', 'yelp-rating', 'yelp-count');

