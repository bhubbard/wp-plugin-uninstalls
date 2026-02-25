<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('liquid_rwd_plus_toggle');
delete_site_option('liquid_rwd_plus_toggle');

