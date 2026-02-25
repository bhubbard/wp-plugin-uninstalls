-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mhr_banner_status', 'mhr_banner_source', 'mhr_click_url', 'mhr_backg_color', 'mhr_banner_height', 'mhr_banner_width', 'mhr_background_height', 'mhr_background_bottom');

