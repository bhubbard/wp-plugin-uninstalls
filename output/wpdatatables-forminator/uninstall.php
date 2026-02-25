<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wdtDateFormat');
delete_site_option('wdtDateFormat');
delete_option('wdtTimeFormat');
delete_site_option('wdtTimeFormat');
delete_option('wdtNumberFormat');
delete_site_option('wdtNumberFormat');

