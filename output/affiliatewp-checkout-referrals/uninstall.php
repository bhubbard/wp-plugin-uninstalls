<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('affwp_version');
delete_site_option('affwp_version');
delete_option('affwp_cr_version');
delete_site_option('affwp_cr_version');

