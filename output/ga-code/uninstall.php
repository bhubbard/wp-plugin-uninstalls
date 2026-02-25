<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('GACode');
delete_site_option('GACode');
delete_option('gacode');
delete_site_option('gacode');

