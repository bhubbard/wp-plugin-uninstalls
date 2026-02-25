-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rw_slider_image_check_db', 'rw_slider_image_check_version');

