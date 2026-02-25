-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gg_af_app_id', 'gg_af_tracking_id', 'gg_custom_fields_cell');

