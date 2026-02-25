<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jsc_effect');
delete_site_option('jsc_effect');
delete_option('jsc_category');
delete_site_option('jsc_category');

