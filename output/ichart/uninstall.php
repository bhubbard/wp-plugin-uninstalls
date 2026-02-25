<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qcldichartcovidAL');
delete_site_option('qcldichartcovidAL');
delete_option('qcldichartcovidCC');
delete_site_option('qcldichartcovidCC');
delete_option('qcldichartcovidUS');
delete_site_option('qcldichartcovidUS');
delete_option('qcldichartcovidCH');
delete_site_option('qcldichartcovidCH');
delete_option('setUpd');
delete_site_option('setUpd');
delete_option('qcldcovid19_options');
delete_site_option('qcldcovid19_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_schedule_event');

