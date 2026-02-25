-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_gst_updated', 'wp_gst_activated');
DELETE FROM wp_options WHERE option_name LIKE '%-options';

