<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ucl_phpespeto_field');
delete_site_option('ucl_phpespeto_field');
delete_option('ucl_phpespeto_field2');
delete_site_option('ucl_phpespeto_field2');

