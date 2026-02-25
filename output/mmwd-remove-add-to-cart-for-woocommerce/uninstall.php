<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mmwd_remove_atc_activated');
delete_site_option('mmwd_remove_atc_activated');
delete_option('mmwd_remove_atc');
delete_site_option('mmwd_remove_atc');
delete_option('mmwd_remove_price');
delete_site_option('mmwd_remove_price');

