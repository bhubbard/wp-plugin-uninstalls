-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewp_chrome-bar-color', 'rewp_g-analytics-id', 'rewp_add-font-awesome', 'rewp_allow-svg', 'rewp_jquery', 'g-analytics-id');

