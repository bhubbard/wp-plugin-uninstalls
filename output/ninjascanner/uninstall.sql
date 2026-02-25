-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nscan_options', 'doing_cron', 'nscan_ajax_start', 'nscan_temp_sigs');

