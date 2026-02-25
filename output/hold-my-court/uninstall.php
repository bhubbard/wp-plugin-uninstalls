<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('holdmyco_cb_court_count');
delete_site_option('holdmyco_cb_court_count');
delete_option('holdmyco_cb_slot_minutes');
delete_site_option('holdmyco_cb_slot_minutes');
delete_option('holdmyco_cb_open_hour');
delete_site_option('holdmyco_cb_open_hour');
delete_option('holdmyco_cb_close_hour');
delete_site_option('holdmyco_cb_close_hour');
delete_option('holdmyco_cb_open_minute');
delete_site_option('holdmyco_cb_open_minute');
delete_option('holdmyco_cb_close_minute');
delete_site_option('holdmyco_cb_close_minute');
delete_option('hmc_cb_open_time');
delete_site_option('hmc_cb_open_time');
delete_option('hmc_cb_close_time');
delete_site_option('hmc_cb_close_time');
delete_option('hmc_cb_open_hour');
delete_site_option('hmc_cb_open_hour');
delete_option('hmc_cb_open_minute');
delete_site_option('hmc_cb_open_minute');
delete_option('hmc_cb_close_hour');
delete_site_option('hmc_cb_close_hour');
delete_option('hmc_cb_close_minute');
delete_site_option('hmc_cb_close_minute');
delete_option('holdmyco_cb_open_time');
delete_site_option('holdmyco_cb_open_time');
delete_option('holdmyco_cb_close_time');
delete_site_option('holdmyco_cb_close_time');

