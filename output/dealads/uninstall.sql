-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpda_region', 'wpda_legal', 'wpda_window', 'wpda_updated', 'wpda_data');

