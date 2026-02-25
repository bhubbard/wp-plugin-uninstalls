<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('skp_greeklish_slugs');
delete_site_option('skp_greeklish_slugs');

