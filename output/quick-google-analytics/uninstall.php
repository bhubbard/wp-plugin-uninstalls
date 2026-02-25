<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quickgoogleanalytics_ua');
delete_site_option('quickgoogleanalytics_ua');
delete_option('quickgoogleanalytics_g');
delete_site_option('quickgoogleanalytics_g');
delete_option('quickgoogleanalytics_select');
delete_site_option('quickgoogleanalytics_select');
delete_option('quickgoogleanalytics_ip');
delete_site_option('quickgoogleanalytics_ip');

