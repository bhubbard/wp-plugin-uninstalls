<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hmd_options');
delete_site_option('hmd_options');
delete_option('hmd_opt_date');
delete_site_option('hmd_opt_date');
delete_option('hmd_opt_modifieddate');
delete_site_option('hmd_opt_modifieddate');
delete_option('hmd_opt_comments');
delete_site_option('hmd_opt_comments');

