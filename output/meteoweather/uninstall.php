<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mw_title');
delete_site_option('mw_title');
delete_option('mw_address');
delete_site_option('mw_address');

