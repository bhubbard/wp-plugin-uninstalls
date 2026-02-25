<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('miqid_woo_save-for-later_auto_delete');
delete_site_option('miqid_woo_save-for-later_auto_delete');

