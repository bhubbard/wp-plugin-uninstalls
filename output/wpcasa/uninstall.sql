-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsight_licenses', 'wpsight_version', 'wpcasa_do_activation_redirect', 'wpcasa', 'wpsight_addons_html', 'wpsight_themes_html', 'wpsight_geocode_over_query_limit');
DELETE FROM wp_options WHERE option_name LIKE 'wpsight_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('agent_update', '_listing_sticky', '_listing_featured', '_listing_not_available', '_geolocation_lat', '_geolocation_long', '_map_type', '_map_zoom', '_map_no_streetview', 'agent_logo_id', 'company', 'description', 'phone', 'twitter', 'facebook', '_geolocated', '_geolocation_city', '_geolocation_country_long', '_geolocation_country_short', '_geolocation_formatted_address', '_geolocation_state_long', '_geolocation_state_short', '_geolocation_street', '_geolocation_zipcode', '_geolocation_postcode', '_gallery_imported', '_gallery', '_price', '_price_offer', '_price_period', '_listing_id', '_price_sold_rented', '_price_status', '_listing_title', 'agent_logo', '_map_hide', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('agent_update', '_listing_sticky', '_listing_featured', '_listing_not_available', '_geolocation_lat', '_geolocation_long', '_map_type', '_map_zoom', '_map_no_streetview', 'agent_logo_id', 'company', 'description', 'phone', 'twitter', 'facebook', '_geolocated', '_geolocation_city', '_geolocation_country_long', '_geolocation_country_short', '_geolocation_formatted_address', '_geolocation_state_long', '_geolocation_state_short', '_geolocation_street', '_geolocation_zipcode', '_geolocation_postcode', '_gallery_imported', '_gallery', '_price', '_price_offer', '_price_period', '_listing_id', '_price_sold_rented', '_price_status', '_listing_title', 'agent_logo', '_map_hide', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('agent_update', '_listing_sticky', '_listing_featured', '_listing_not_available', '_geolocation_lat', '_geolocation_long', '_map_type', '_map_zoom', '_map_no_streetview', 'agent_logo_id', 'company', 'description', 'phone', 'twitter', 'facebook', '_geolocated', '_geolocation_city', '_geolocation_country_long', '_geolocation_country_short', '_geolocation_formatted_address', '_geolocation_state_long', '_geolocation_state_short', '_geolocation_street', '_geolocation_zipcode', '_geolocation_postcode', '_gallery_imported', '_gallery', '_price', '_price_offer', '_price_period', '_listing_id', '_price_sold_rented', '_price_status', '_listing_title', 'agent_logo', '_map_hide', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('agent_update', '_listing_sticky', '_listing_featured', '_listing_not_available', '_geolocation_lat', '_geolocation_long', '_map_type', '_map_zoom', '_map_no_streetview', 'agent_logo_id', 'company', 'description', 'phone', 'twitter', 'facebook', '_geolocated', '_geolocation_city', '_geolocation_country_long', '_geolocation_country_short', '_geolocation_formatted_address', '_geolocation_state_long', '_geolocation_state_short', '_geolocation_street', '_geolocation_zipcode', '_geolocation_postcode', '_gallery_imported', '_gallery', '_price', '_price_offer', '_price_period', '_listing_id', '_price_sold_rented', '_price_status', '_listing_title', 'agent_logo', '_map_hide', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_geolocation_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_geolocation_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_geolocation_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_geolocation_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

