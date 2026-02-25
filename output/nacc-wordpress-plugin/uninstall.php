<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nacc_theme');
delete_site_option('nacc_theme');
delete_option('nacc_language');
delete_site_option('nacc_language');
delete_option('nacc_layout');
delete_site_option('nacc_layout');
delete_option('nacc_special');
delete_site_option('nacc_special');

