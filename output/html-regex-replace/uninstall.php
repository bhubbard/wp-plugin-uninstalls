<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tm_regex_options');
delete_site_option('tm_regex_options');
delete_option('tm_regex_opt_ptrns');
delete_site_option('tm_regex_opt_ptrns');
delete_option('tm_regex_opt_repls');
delete_site_option('tm_regex_opt_repls');

