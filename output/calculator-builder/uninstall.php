<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('calculator_builder_data');
delete_site_option('calculator_builder_data');
delete_option('calchub_notice_status');
delete_site_option('calchub_notice_status');
delete_option('calchub_settings');
delete_site_option('calchub_settings');

