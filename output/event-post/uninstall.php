<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmt_offset ');
delete_site_option('gmt_offset ');
delete_option('ep_settings');
delete_site_option('ep_settings');

