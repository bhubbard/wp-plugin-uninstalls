<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('contactmetrics_email');
delete_site_option('contactmetrics_email');
delete_option('contactmetrics_css');
delete_site_option('contactmetrics_css');

