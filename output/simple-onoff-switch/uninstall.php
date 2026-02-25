<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simpleswitch');
delete_site_option('simpleswitch');
delete_option('simpleswitch_onvalue');
delete_site_option('simpleswitch_onvalue');
delete_option('simpleswitch_offvalue');
delete_site_option('simpleswitch_offvalue');

