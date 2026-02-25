-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('igumbi_hotel_id', 'igumbi_language', 'igumbi_wide', 'igumbi_custom_css', 'igumbi_responsive', 'igumbi_options');

