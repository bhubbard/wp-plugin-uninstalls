<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ROU_Options');
delete_site_option('ROU_Options');
delete_option('ROU_attach_id');
delete_site_option('ROU_attach_id');

