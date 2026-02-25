<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmoadsmaster_activation');
delete_site_option('gmoadsmaster_activation');
delete_option('gmoadsmaster_verification');
delete_site_option('gmoadsmaster_verification');
delete_option('gmoadsmaster_analytics');
delete_site_option('gmoadsmaster_analytics');
delete_option('gmoadsmaster_adcodes');
delete_site_option('gmoadsmaster_adcodes');

