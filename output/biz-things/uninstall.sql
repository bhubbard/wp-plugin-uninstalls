-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('biz_things_google_places_id', 'biz_things_google_places_search', 'biz_things_google_places_placeid');

