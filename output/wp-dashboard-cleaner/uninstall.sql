-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wpdc_saved_values', '_wpdc_other_saved_values', 'wpdc_activated_on', 'wpdc_deactivated_on');

