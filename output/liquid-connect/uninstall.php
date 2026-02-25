<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('liquid_connect_toggle');
delete_site_option('liquid_connect_toggle');

// Delete Transients
delete_transient('liquid_admin_notices');
delete_site_transient('liquid_admin_notices');

