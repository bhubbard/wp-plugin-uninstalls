<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lhlnvnd_main_options');
delete_site_option('lhlnvnd_main_options');
delete_option('lhlnvnd_environment_options');
delete_site_option('lhlnvnd_environment_options');
delete_option('lhlnvnd_email_options');
delete_site_option('lhlnvnd_email_options');

