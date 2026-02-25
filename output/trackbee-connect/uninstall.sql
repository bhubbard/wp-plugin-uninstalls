-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trackbee_application_password', 'trackbee_site_url', 'trackbee_pixel_api_key', 'trackbee_api_key', 'trackbee_error', 'trackbee_tech_error');

