<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugeguard_redirect_on_activate');
delete_site_option('plugeguard_redirect_on_activate');

