-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scfwc_time', 'scfwc_title', 'scfwc_select_days', 'scfwc_render_location');

