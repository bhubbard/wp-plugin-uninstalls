<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scrbbl-apikey');
delete_site_option('scrbbl-apikey');
delete_option('scrbbl-nofollow');
delete_site_option('scrbbl-nofollow');
delete_option('scrbbl-nofollow-regex');
delete_site_option('scrbbl-nofollow-regex');
delete_option('scrbbl-order');
delete_site_option('scrbbl-order');

