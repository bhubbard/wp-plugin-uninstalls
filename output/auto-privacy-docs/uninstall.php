<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adsmax_privacydocs-settings');
delete_site_option('adsmax_privacydocs-settings');

