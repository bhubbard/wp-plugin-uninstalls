<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('genform_general');
delete_site_option('genform_general');
delete_option('genform_version');
delete_site_option('genform_version');

