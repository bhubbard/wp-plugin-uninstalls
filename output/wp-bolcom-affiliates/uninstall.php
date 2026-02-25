<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbol_auth_key');
delete_site_option('wpbol_auth_key');
delete_option('wpbol_partner_id');
delete_site_option('wpbol_partner_id');

