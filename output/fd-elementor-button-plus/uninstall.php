<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('button_plus_deferred_admin_notices');
delete_site_option('button_plus_deferred_admin_notices');

