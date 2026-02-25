-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfixe-booking-widget-slug', 'cfixe-booking-widget-color');

