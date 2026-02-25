-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fwrsw_full_width_settings', 'fwrsw_full_width_slider_msg');

