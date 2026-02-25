<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('downloadcounterchart_widget');
delete_site_option('downloadcounterchart_widget');

