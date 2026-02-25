<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('um_options');
delete_site_option('um_options');
delete_option('um_jobboardwp_version');
delete_site_option('um_jobboardwp_version');
delete_option('um_jobboardwp_last_version_upgrade');
delete_site_option('um_jobboardwp_last_version_upgrade');

