<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bnsbc_custom_classes_field');
delete_site_option('bnsbc_custom_classes_field');

