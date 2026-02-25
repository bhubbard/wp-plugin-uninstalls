<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('russell_smtp');
delete_site_option('russell_smtp');
delete_option('russell_design');
delete_site_option('russell_design');
delete_option('russell_process');
delete_site_option('russell_process');
delete_option('rscf');
delete_site_option('rscf');
delete_option('russell_message');
delete_site_option('russell_message');

