<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fpfi_coffee_notice_dismissed');
delete_site_option('fpfi_coffee_notice_dismissed');

