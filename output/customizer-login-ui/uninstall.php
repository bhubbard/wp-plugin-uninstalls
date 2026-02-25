<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cluiwp_color1');
delete_site_option('cluiwp_color1');
delete_option('cluiwp_color2');
delete_site_option('cluiwp_color2');
delete_option('cluiwp_logo');
delete_site_option('cluiwp_logo');
delete_option('cluiwp_background');
delete_site_option('cluiwp_background');
delete_option('cluiwp_brightness');
delete_site_option('cluiwp_brightness');
delete_option('cluiwp_activation_redirect');
delete_site_option('cluiwp_activation_redirect');

