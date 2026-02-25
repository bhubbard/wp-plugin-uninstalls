<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpca_version');
delete_site_option('wpca_version');
delete_option('collectiveaccess_options');
delete_site_option('collectiveaccess_options');

