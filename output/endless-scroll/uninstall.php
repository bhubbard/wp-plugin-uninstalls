<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vScroll');
delete_site_option('vScroll');
delete_option('hScroll');
delete_site_option('hScroll');
delete_option('showOnHover');
delete_site_option('showOnHover');
delete_option('zindex');
delete_site_option('zindex');
delete_option('easingDuration');
delete_site_option('easingDuration');
delete_option('trackWidth');
delete_site_option('trackWidth');
delete_option('trackColor');
delete_site_option('trackColor');
delete_option('barWidth');
delete_site_option('barWidth');
delete_option('barColor');
delete_site_option('barColor');

