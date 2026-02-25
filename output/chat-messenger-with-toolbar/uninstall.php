<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woc_credit');
delete_site_option('woc_credit');
delete_option('woc_sitewide');
delete_site_option('woc_sitewide');
delete_option('woc_sitewide_turned_off');
delete_site_option('woc_sitewide_turned_off');

