<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sticky_element');
delete_site_option('sticky_element');
delete_option('sticky_element_end');
delete_site_option('sticky_element_end');
delete_option('sticky_element_max');
delete_site_option('sticky_element_max');

