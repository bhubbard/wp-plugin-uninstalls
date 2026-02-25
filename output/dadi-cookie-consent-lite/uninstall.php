<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dadicc_options');
delete_site_option('dadicc_options');
delete_option('dadicc_options_admin');
delete_site_option('dadicc_options_admin');

// Delete Transients
delete_transient('dadicc_scripts_kept');
delete_site_transient('dadicc_scripts_kept');

