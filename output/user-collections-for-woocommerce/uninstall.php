<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gf_usercollections_wc_settings');
delete_site_option('gf_usercollections_wc_settings');

