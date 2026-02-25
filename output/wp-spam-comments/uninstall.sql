-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpspamcommtotal_val', 'wpspamcommscheduled_val', 'wpspamcommhours_val');

