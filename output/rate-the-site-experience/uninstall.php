<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rtse-enable');
delete_site_option('rtse-enable');
delete_option('rtse-enable-pages');
delete_site_option('rtse-enable-pages');
delete_option('rtse-widget-settings');
delete_site_option('rtse-widget-settings');
delete_option('rtse-widget-content');
delete_site_option('rtse-widget-content');
delete_option('rtse-thankyou-widget-content');
delete_site_option('rtse-thankyou-widget-content');
delete_option('rtse-widget-content-logo');
delete_site_option('rtse-widget-content-logo');

