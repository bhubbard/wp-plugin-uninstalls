<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('airfieldhub_key');
delete_site_option('airfieldhub_key');
delete_option('airfieldhub_options');
delete_site_option('airfieldhub_options');

