<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grassblade_tincan_endpoint');
delete_site_option('grassblade_tincan_endpoint');
delete_option('grassblade_free_addons');
delete_site_option('grassblade_free_addons');
delete_option('grassblade_addons');
delete_site_option('grassblade_addons');
delete_option('visibility_control_for_learnpress');
delete_site_option('visibility_control_for_learnpress');

