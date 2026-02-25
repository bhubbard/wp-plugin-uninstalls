<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jdmnll_1stimg');
delete_site_option('jdmnll_1stimg');
delete_option('jdmnll_nthimg');
delete_site_option('jdmnll_nthimg');

