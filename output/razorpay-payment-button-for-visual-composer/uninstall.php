<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('key_id_field');
delete_site_option('key_id_field');
delete_option('key_secret_field');
delete_site_option('key_secret_field');

