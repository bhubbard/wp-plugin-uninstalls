-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('foursquare-feedURL', 'foursquare-enableMap', 'foursquare-numCheckins');

