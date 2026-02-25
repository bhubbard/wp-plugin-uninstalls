<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pp_uninstall');
delete_site_option('pp_uninstall');
delete_option('pp_reset_settings');
delete_site_option('pp_reset_settings');

