<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('secret_key');
delete_site_option('secret_key');
delete_option('client_id');
delete_site_option('client_id');
delete_option('white_list');
delete_site_option('white_list');

