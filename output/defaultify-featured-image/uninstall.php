<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdfi_enable_default');
delete_site_option('wpdfi_enable_default');
delete_option('wpdfi_image_id');
delete_site_option('wpdfi_image_id');

