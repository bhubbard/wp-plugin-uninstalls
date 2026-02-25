<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lt_unsubscribe_options');
delete_site_option('lt_unsubscribe_options');
delete_option('iw_ltu_version');
delete_site_option('iw_ltu_version');

