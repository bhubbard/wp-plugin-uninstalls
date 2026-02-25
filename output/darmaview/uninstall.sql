-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('darmaview_slider_slides', 'darmaview_slider_all_sliders');

