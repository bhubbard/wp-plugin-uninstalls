<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gm_contact_address');
delete_site_option('gm_contact_address');
delete_option('site_url');
delete_site_option('site_url');

