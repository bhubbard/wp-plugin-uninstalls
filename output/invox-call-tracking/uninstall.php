<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('invox_version');
delete_site_option('invox_version');
delete_option('invox_cid');
delete_site_option('invox_cid');

