-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bheema_ccw_country_code', 'bheema_ccw_number', 'bheema_ccw_icon', 'bheema_ccw_placement', 'bheema_ccw_margin');

