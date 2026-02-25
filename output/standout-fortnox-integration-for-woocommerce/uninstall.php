<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woo_key_id');
delete_site_option('woo_key_id');
delete_option('fortnox_authorization_key');
delete_site_option('fortnox_authorization_key');
delete_option('fortnox_id_key');
delete_site_option('fortnox_id_key');

