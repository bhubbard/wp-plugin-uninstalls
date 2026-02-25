<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpeft_types');
delete_site_option('wpeft_types');
delete_option('wpeft_custom_types');
delete_site_option('wpeft_custom_types');
delete_option('wpeft_no_strict');
delete_site_option('wpeft_no_strict');
delete_option('wpeft_no_wp');
delete_site_option('wpeft_no_wp');
delete_option('wpeft_gf_hack');
delete_site_option('wpeft_gf_hack');

