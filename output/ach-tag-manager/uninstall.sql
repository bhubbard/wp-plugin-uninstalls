-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('achtm_google_measurement_id', 'achtm_google_anaytics_code', 'achtm_tag_manager_id', 'achtm-admin-notice-on-activation');

