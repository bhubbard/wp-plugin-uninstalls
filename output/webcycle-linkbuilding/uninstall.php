<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webcycle_token_id');
delete_site_option('webcycle_token_id');
delete_option('webcycle_link_id');
delete_site_option('webcycle_link_id');

