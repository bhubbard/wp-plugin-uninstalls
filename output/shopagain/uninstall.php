<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shopagain_auth');
delete_site_option('shopagain_auth');
delete_option('shopagain_wc_version');
delete_site_option('shopagain_wc_version');

