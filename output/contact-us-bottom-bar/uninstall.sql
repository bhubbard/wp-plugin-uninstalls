-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contact_us_hotline_number', 'contact_us_facebook_messenger_link', 'contact_us_zalo_number', 'contact_us_google_map_link');

