<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('htgb_activation_time');
delete_site_option('htgb_activation_time');
delete_option('htgb_notice_dismissed');
delete_site_option('htgb_notice_dismissed');

