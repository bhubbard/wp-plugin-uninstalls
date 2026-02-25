<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notice-interceptor_rules');
delete_site_option('notice-interceptor_rules');
delete_option('notice-interceptor_autohide');
delete_site_option('notice-interceptor_autohide');
delete_option('notice-interceptor_rules_custom');
delete_site_option('notice-interceptor_rules_custom');
delete_option('notice-interceptor_option_adminonly');
delete_site_option('notice-interceptor_option_adminonly');
delete_option('notice-interceptor_option_clearing');
delete_site_option('notice-interceptor_option_clearing');

