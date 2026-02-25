<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('znajdz-prace-z-pracapl');
delete_site_option('znajdz-prace-z-pracapl');
delete_option('znzppl_appearance');
delete_site_option('znzppl_appearance');

