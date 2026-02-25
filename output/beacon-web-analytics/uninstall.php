<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bwai_beta');
delete_site_option('bwai_beta');
delete_option('bwai_admin_tracking');
delete_site_option('bwai_admin_tracking');

