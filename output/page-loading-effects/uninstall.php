<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ple_option_3');
delete_site_option('ple_option_3');
delete_option('ple_option_6');
delete_site_option('ple_option_6');
delete_option('ple_option_7');
delete_site_option('ple_option_7');
delete_option('ple_option_2');
delete_site_option('ple_option_2');
delete_option('ple_option_1');
delete_site_option('ple_option_1');
delete_option('ple_option_4');
delete_site_option('ple_option_4');
delete_option('ple_option_5');
delete_site_option('ple_option_5');

