-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('holdmyco_cb_court_count', 'holdmyco_cb_slot_minutes', 'holdmyco_cb_open_hour', 'holdmyco_cb_close_hour', 'holdmyco_cb_open_minute', 'holdmyco_cb_close_minute', 'hmc_cb_open_time', 'hmc_cb_close_time', 'hmc_cb_open_hour', 'hmc_cb_open_minute', 'hmc_cb_close_hour', 'hmc_cb_close_minute', 'holdmyco_cb_open_time', 'holdmyco_cb_close_time');

