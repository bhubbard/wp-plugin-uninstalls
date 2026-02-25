<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ezoptimize_key');
delete_site_option('ezoptimize_key');
delete_option('ezoptimize');
delete_site_option('ezoptimize');
delete_option('ezoptimize_auto');
delete_site_option('ezoptimize_auto');

