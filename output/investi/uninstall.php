<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('investi-apikey');
delete_site_option('investi-apikey');
delete_option('investi-apikey-saved');
delete_site_option('investi-apikey-saved');
delete_option('investi-do-not-add-css');
delete_site_option('investi-do-not-add-css');

