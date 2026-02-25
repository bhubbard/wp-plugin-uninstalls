<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tz_securitycode');
delete_site_option('tz_securitycode');
delete_option('tz_black_ip');
delete_site_option('tz_black_ip');
delete_option('tz_bot_enable');
delete_site_option('tz_bot_enable');

