<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vipdrv-site-id');
delete_site_option('vipdrv-site-id');
delete_option('inject-widget-to-vlp');
delete_site_option('inject-widget-to-vlp');
delete_option('inject-widget-to-vdp');
delete_site_option('inject-widget-to-vdp');

