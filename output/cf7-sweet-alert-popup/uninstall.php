<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7simplePopupWidth');
delete_site_option('cf7simplePopupWidth');
delete_option('cf7simplePopupAutoClose');
delete_site_option('cf7simplePopupAutoClose');

