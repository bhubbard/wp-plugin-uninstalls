-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('travelling_blogger_location_page_id', 'travelling_blogger_version');

