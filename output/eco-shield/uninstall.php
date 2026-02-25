<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpes_options');
delete_site_option('wpes_options');
delete_option('wpes_total_plays');
delete_site_option('wpes_total_plays');
delete_option('wpes_carbon_saved');
delete_site_option('wpes_carbon_saved');

