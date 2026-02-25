<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fp_only_new');
delete_site_option('fp_only_new');
delete_option('fp_force_category');
delete_site_option('fp_force_category');

