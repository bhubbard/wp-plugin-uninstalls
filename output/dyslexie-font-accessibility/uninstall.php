<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dyslfoac_default_enabled');
delete_site_option('dyslfoac_default_enabled');

