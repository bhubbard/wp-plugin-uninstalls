<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ncb_arm_404_log_limit');
delete_site_option('ncb_arm_404_log_limit');

