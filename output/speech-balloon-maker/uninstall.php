<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dn_sbm_input_balloon_style');
delete_site_option('dn_sbm_input_balloon_style');

