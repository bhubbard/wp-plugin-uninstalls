<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('closeupshop_closure_periods');
delete_site_option('closeupshop_closure_periods');

