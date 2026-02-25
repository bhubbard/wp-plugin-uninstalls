<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jojo_description_enable');
delete_site_option('jojo_description_enable');
delete_option('jojo_description_fixed_enable');
delete_site_option('jojo_description_fixed_enable');
delete_option('jojo_description_fixed_height');
delete_site_option('jojo_description_fixed_height');

