<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbb_options');
delete_site_option('bbb_options');
delete_option('bbb_badbots');
delete_site_option('bbb_badbots');
delete_option('blackhole-bad-bots-dismiss-notice');
delete_site_option('blackhole-bad-bots-dismiss-notice');

